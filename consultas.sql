

################################################################################
##############################   CONSULTAS    ##################################
################################################################################

## 2.1 Deuda total de Tarjeta de Crédito por Franquicia.

SELECT f.name AS Franquicia, SUM(c.approved_limit - c.available_limit) AS DeudaTotal
FROM credit_card AS c
JOIN franchise AS f ON c.franchise = f.id
GROUP BY f.name;

## 2.2. Cliente con mayor Saldo en Canje
SELECT *
FROM saving_account
ORDER BY exchange_balance DESC
LIMIT 1;



## 2.3. Cliente con mayor saldo retirado de una Cuenta de Ahorros en un periodo determinado (Por fecha de transacción)
SELECT  saving_account, SUM(amount) from deposit
WHERE DATE(transaction_date) BETWEEN '2023-09-01' AND '2023-09-08'
GROUP BY saving_account
ORDER BY SUM(amount) DESC
LIMIT 1;


## 2.4. Cuenta de Ahorro con mayor número de titulares
SELECT id_saving_account from saving_account_owners
GROUP BY id_saving_account
ORDER BY COUNT(DISTINCT id_owner) DESC
LIMIT 1;


##  2.5. Saldo Total de todas las cuentas de ahorro de un cliente

SELECT SUM(total_balance) AS saldo_total
FROM saving_account
WHERE account_id IN (
    SELECT id_saving_account
    FROM saving_account_owners
    WHERE id_owner = :id_cliente
);

## 2.6. Número de Cuentas de Ahorro activas de clientes extranjeros
SELECT COUNT(sa.account_id) AS num_cuentas_ahorro_extranjeros
FROM saving_account sa
INNER JOIN saving_account_owners sao ON sa.account_id = sao.id_saving_account
INNER JOIN person p ON sao.id_owner = p.id
INNER JOIN natural_person np ON p.natural_person_id = np.document_id
WHERE np.document_type = 4 OR np.document_type = 5; 


## 2.7. Listado de Accionistas que son clientes con su correspondiente Saldo Total 
# de Deuda de todas las tarjetas de crédito cuyo Saldo Total de Deuda sea mayor a 
# UN MILLÓN DE PESOS.
SELECT p.id AS id_accionista,
       CONCAT(np.name, ' ', np.surname) AS nombre_accionista,
       SUM(c.approved_limit - c.available_limit) AS saldo_total_deuda
FROM person p
INNER JOIN natural_person np ON p.natural_person_id = np.document_id
LEFT JOIN credit_card c ON p.id = c.owner_id
WHERE p.role = 4 
GROUP BY p.id
HAVING SUM(c.approved_limit - c.available_limit)> 1000000;

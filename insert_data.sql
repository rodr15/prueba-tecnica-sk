insert into person_role (id, role)
values
  (1, 'Clientes persona natural'),
  (2, 'Clientes corporativos'),
  (3, 'Proveedores'),
  (4, 'Accionistas'),
  (5, 'Representantes legales');

insert into person_type (id, p_type)
values
  (1, 'Legal'),
  (2, 'Natural');


insert into company_type (id, c_type)
values
  (1, 'Sociedad Anónima'),
  (2, 'Limitada'),
  (3, 'Sociedad Colectiva');

insert into deposit_type (id, m_type)
values
  (1, 'Depósitos en Efectivo'),
  (2, 'Depósitos en Cheques'),
  (3, 'Retiros');


insert into franchise (id, name)
values
  (1, 'Visa'),
  (2, 'MasterCard'),
  (3, 'American Express'),
  (4, 'Diners');


insert into movement_type (id, name)
values
  (1, 'Compras Nacionales'),
  (2, 'Cuota de Manejo'),
  (3, 'Pago de Tarjeta'),
  (4, 'Retiros por Avance');



INSERT INTO natural_person (document_id, document_type, name, surname, birth, department, municipality)
VALUES
  (1, 2, 'Juan', 'Perez', '1990-05-15', 'Bogotá', 'Bogotá'),
  (2, 2, 'María', 'López', '1985-08-20', 'Medellín', 'Medellín'),
  (3, 4, 'Carlos', 'González', '1992-03-10', 'Cali', 'Cali'),
  (4, 5, 'John', 'Doe', '1992-03-10', 'Cali', 'Cali'),
  (5, 2, 'Empresa A S.A.', '', '2000-01-01', 'Bogotá', 'Bogotá'),
  (6, 2, 'Empresa B Ltda.', '', '2000-01-01', 'Medellín', 'Medellín');

-- Personas Naturales
INSERT INTO person (p_type, natural_person_id, role)
VALUES
  (2, 1, 4), -- Juan Perez
  (2, 2, 1), -- María López
  (2, 3, 1), -- Carlos González
  (2, 4, 4), -- John Doe 
  (2, 5, 5), -- Representante legal de Empresa A Ltda.
  (2, 6, 5); -- Representante legal de Empresa B Ltda.

-- Personas Jurídicas
INSERT INTO person (p_type, legal_person_id, role)
VALUES
  (1, 1001, 4), -- Empresa A S.A.
  (1, 1002, 4); -- Empresa B Ltda.


INSERT INTO legal_person (nit, business_name, document_type, company_type, legal_representative)
VALUES
  (1001, 'Empresa A S.A.', 1, 1, 4), -- Empresa A S.A. con Juan como representante legal
  (1002, 'Empresa B Ltda.', 1, 2, 1); -- Empresa B Ltda.


INSERT INTO saving_account (account_id, exchange_balance, available_balance, total_balance)
VALUES
  (101, 5000.00, 5000.00, 10000.00), -- Cuenta de Juan Perez
  (102, 7500.00, 7500.00, 15000.00), -- Cuenta de María López
  (103, 3000.00, 3000.00, 6000.00), -- Cuenta de Carlos González
  (104, 10000.00, 10000.00, 20000.00), -- Cuenta de Empresa A S.A.
  (105, 8000.00, 8000.00, 16000.00); -- Cuenta de Empresa B Ltda.

  

INSERT INTO saving_account_owners (id_owner, id_saving_account)
VALUES
  (1, 101), -- Juan Perez es dueño de la cuenta 101
  (2, 102), -- María López es dueña de la cuenta 102
  (3, 103), -- Carlos González es dueño de la cuenta 103
  (4, 104), -- Empresa A S.A. es dueña de la cuenta 104
  (5, 105),  -- Empresa B Ltda. es dueña de la cuenta 105
  (4, 101), -- Empresa A S.A. es dueña de la cuenta 101
  (5, 102); -- Empresa B Ltda. es dueña de la cuenta 102


INSERT INTO deposit (transaction_date, d_type, amount, saving_account)
VALUES
  ('2023-09-01', 1, 5000.00, 101), -- Depósito en efectivo en la cuenta de Juan
  ('2023-09-03', 1, 3000.00, 102), -- Depósito en efectivo en la cuenta de María
  ('2023-09-05', 3, 1500.00, 101), -- Retiro en efectivo en la cuenta de Juan
  ('2023-09-02', 1, 6000.00, 104), -- Depósito en efectivo en la cuenta de Empresa A S.A.
  ('2023-09-04', 3, 3000.00, 105), -- Retiro en efectivo en la cuenta de Empresa B Ltda.
  ('2023-09-06', 1, 4000.00, 102); -- Depósito en efectivo en la cuenta de María

INSERT INTO credit_card (franchise, approved_limit, available_limit, status, owner_id)
VALUES
  (1, 10000000.00, 8000000.00, 1, 1), -- Tarjeta Visa de Juan Perez
  (2, 15000000.00, 10000000.00, 1, 1), -- Tarjeta MasterCard de Juan Perez
  (1, 8000000.00, 7200000.00, 1, 2), -- Tarjeta Visa de María López
  (1, 5000000.00, 3800000.00, 1, 3), -- Tarjeta Visa de Carlos González
  (1, 10000000.00, 8000000.00, 1, 4), -- Tarjeta Visa de Empresa A S.A.
  (1, 7500000.00, 7500000.00, 1, 5); -- Tarjeta Visa de Empresa B Ltda.

INSERT INTO movement (transaction_date, m_type, amount, credit_card_id)
VALUES
  ('2023-09-02', 1, 2000000.00, 1), -- Compra nacional con Visa de Juan Perez
  ('2023-09-04', 2, 500000.00, 1), -- Cuota de manejo de Visa de Juan Perez
  ('2023-09-06', 1, 4000000.00, 2), -- Compra nacional con MasterCard de Juan Perez
  ('2023-09-05', 4, 1000000.00, 3), -- Retiro por avance con Visa de Carlos González
  ('2023-09-03', 1, 1000000.00, 4), -- Compra nacional con Visa de Empresa A S.A.
  ('2023-09-01', 3, 2000000.00, 5), -- Pago de tarjeta con Visa de Empresa B Ltda.
  ('2023-09-07', 1, 3000000.00, 2), -- Compra nacional con MasterCard de Juan Perez
  ('2023-09-08', 4, 500000.00, 1); -- Retiro por avance con Visa de Juan Perez

-- Registros de Owners para las Empresas A S.A. y B Ltda.
INSERT INTO shared_owners (id_owner, id_legal_person)
VALUES
  (1, 1001), -- Juan Perez es accionista de Empresa A S.A.
  (5, 1001), -- María López es accionista de Empresa A S.A.
  (6, 1001), -- Carlos González es accionista de Empresa A S.A.
  (1, 1002); -- Juan Perez es accionista de Empresa B Ltda.

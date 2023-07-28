INSERT INTO customers (customer_id, name, cpf, age, gender, profession, phone, email, birthday, created_at)
VALUES
  (1, 'Maria Silva', '12345678901', 30, 'Feminino', 'Engenheira', '(11) 98765-4321', 'maria.silva@email.com', '1993-05-15 00:00:00', NOW()),
  (2, 'João Santos', '98765432109', 25, 'Masculino', 'Advogado', '(21) 99999-8888', 'joao.santos@email.com', '1998-10-20 00:00:00', NOW()),
  (3, 'Ana Oliveira', '45678912345', 40, 'Feminino', 'Médica', '(31) 11111-2222', 'ana.oliveira@email.com', '1983-12-01 00:00:00', NOW()),
  (4, 'Pedro Sousa', '32109876543', 28, 'Masculino', 'Professor', '(41) 55555-6666', 'pedro.sousa@email.com', '1995-08-05 00:00:00', NOW()),
  (5, 'Juliana Lima', '65432198709', 35, 'Feminino', 'Arquiteta', '(51) 33333-4444', 'juliana.lima@email.com', '1988-11-25 00:00:00', NOW()),
  (6, 'Rafael Costa', '90817263541', 32, 'Masculino', 'Contador', '(61) 77777-8888', 'rafael.costa@email.com', '1991-09-10 00:00:00', NOW()),
  (7, 'Sofia Almeida', '13579246801', 27, 'Feminino', 'Bióloga', '(71) 22222-3333', 'sofia.almeida@email.com', '1996-04-03 00:00:00', NOW()),
  (8, 'Fernando Gomes', '87654321980', 45, 'Masculino', 'Engenheiro Civil', '(81) 44444-5555', 'fernando.gomes@email.com', '1978-07-08 00:00:00', NOW()),
  (9, 'Mariana Rodrigues', '31415926535', 22, 'Feminino', 'Estudante', '(91) 66666-7777', 'mariana.rodrigues@email.com', '2001-02-14 00:00:00', NOW()),
  (10, 'Carlos Carvalho', '27182818284', 38, 'Masculino', 'Médico', '(99) 77777-6666', 'carlos.carvalho@email.com', '1985-06-30 00:00:00', NOW());

INSERT INTO addresses (address_id, customer_id, street, number, neighborhood, zip_code, city, state, country, created_at)
VALUES
  (1, 1, 'Rua das Flores', 123, 'Centro', 12345, 'São Paulo', 'SP', 'Brasil', NOW()),
  (2, 2, 'Avenida das Palmeiras', 456, 'Jardins', 54321, 'Rio de Janeiro', 'RJ', 'Brasil', NOW()),
  (3, 3, 'Rua dos Pinheiros', 789, 'Pinheiros', 67890, 'Belo Horizonte', 'MG', 'Brasil', NOW()),
  (4, 4, 'Avenida dos Ipês', 101, 'Florais', 13579, 'Curitiba', 'PR', 'Brasil', NOW()),
  (5, 5, 'Rua das Tulipas', 222, 'Flores', 97531, 'Porto Alegre', 'RS', 'Brasil', NOW()),
  (6, 6, 'Avenida dos Cravos', 333, 'Jardim', 75319, 'Brasília', 'DF', 'Brasil', NOW()),
  (7, 7, 'Rua das Orquídeas', 444, 'Orquídeas', 86420, 'Salvador', 'BA', 'Brasil', NOW()),
  (8, 8, 'Avenida das Margaridas', 555, 'Margaridas', 13579, 'Recife', 'PE', 'Brasil', NOW()),
  (9, 9, 'Rua das Violetas', 666, 'Violetas', 87654, 'Belém', 'PA', 'Brasil', NOW()),
  (10, 10, 'Avenida das Hortênsias', 777, 'Jardim das Hortênsias', 24680, 'Manaus', 'AM', 'Brasil', NOW());

INSERT INTO body_compositions (body_composition_id, customer_id, height, age, weight, bmi, muscle_percent, fat_percent, metabolism, body_age, visceral_fat, created_at)
VALUES
  (1, 1, 165, 30, 65, 23.87, 35.2, 22.5, 1500, 25, 12.4, NOW()),
  (2, 2, 180, 25, 78, 24.07, 38.9, 20.3, 1600, 28, 14.2, NOW()),
  (3, 3, 155, 40, 70, 29.17, 32.1, 30.5, 1400, 32, 15.8, NOW()),
  (4, 4, 170, 28, 80, 27.68, 40.5, 26.8, 1700, 30, 14.6, NOW()),
  (5, 5, 160, 35, 55, 21.48, 30.8, 18.9, 1300, 22, 10.5, NOW()),
  (6, 6, 175, 32, 68, 22.20, 36.3, 19.2, 1550, 26, 13.2, NOW()),
  (7, 7, 150, 27, 62, 27.56, 34.7, 29.5, 1350, 31, 16.5, NOW()),
  (8, 8, 185, 45, 90, 26.32, 41.2, 28.3, 1800, 36, 18.9, NOW()),
  (9, 9, 170, 22, 58, 20.07, 29.4, 17.8, 1250, 20, 9.7, NOW()),
  (10, 10, 175, 38, 75, 24.49, 37.1, 23.6, 1650, 29, 13.8, NOW());

INSERT INTO sleep_types (sleep_types_id, sleep_type)
VALUES
	(1, 'Tranquilo'),
	(2, 'Agitado'),
	(3, 'Insônia');

INSERT INTO substance_use_types (substance_use_types_id, substance_use_type)
VALUES
	(1, 'Álcool'),
	(2, 'Tabaco'),
	(3, 'Café');

INSERT INTO emotional_state_types (emotional_state_types_id, emotional_state_type)
VALUES
	(1, 'Preocupado'),
	(2, 'Ancioso'),
	(3, 'Depressivo'),
	(4, 'Alegre'),
	(5, 'Irritável');

INSERT INTO sun_exposure_types (sun_exposure_id, sun_exposure_type)
VALUES
	(1, 'Trabalha em local sem incidência de luz natural'),
	(2, 'Trabalha ao ar livre');

INSERT INTO diseases (disease_id, disease_name)
VALUES
	(1, 'Hipotensão'),
	(2, 'Hipertensão'),
	(3, 'Diabetes'),
	(4, 'Endócrinos'),
	(5, 'Hiperlipidemia'),
	(6, 'Vascular'),
	(7, 'Coagulação'),
	(8, 'Respiratório'),
	(9, 'Neurológicos'),
	(10, 'Imunológico');

INSERT INTO contraceptives (contraceptive_id, contraceptive_name)
VALUES
  (1, 'Pílula Anticoncepcional'),
  (2, 'DIU (Dispositivo Intrauterino)'),
  (3, 'Preservativo Masculino'),
  (4, 'Preservativo Feminino'),
  (5, 'Implante Contraceptivo'),
  (6, 'Injeção Anticoncepcional'),
  (7, 'Anel Vaginal'),
  (8, 'Adesivo Anticoncepcional'),
  (9, 'Método de Tabelinha'),
  (10, 'Diafragma'),
  (11, 'Espermicida');

INSERT INTO corporal_areas (corporal_area_id, corporal_area)
VALUES
  (1, 'Cabeça'), (2, 'Testa'), (3, 'Sobrancelha'), (4, 'Glabela'), (5, 'Faces Laterais'), (6, 'Nariz'),
  (7, 'Mento'), (8, 'Buço'), (9, 'Nuca'), (10, 'Barba Inteira'), (11, 'Faixa de Barba'), (12, 'Ombro'),
  (13, 'Axila'), (14, 'Braços'), (15, 'Antebraço'), (16, 'Mãos e dedos'), (17, 'Seios'), (18, 'Aréolas'),
  (19, 'Barriga'), (20, 'Linha Alba'), (21, 'Costas'), (22, 'Lombar'), (23, 'Glúteos'), (24, 'Ânus'), (25, 'Virilha'),
  (26, 'Perna Completa'), (27, 'Laterais da Coxa'), (28, 'Interior das Coxas'), (29, 'Coxas'), (30, 'Joelho'),
  (31, 'Meia Perna'), (32, 'Pés e Dedos');

INSERT INTO procedure_names (procedure_name_id, procedure_name)
VALUES
	(1, 'Remoção de Tatuagem'),
	(2, 'Depilação à Laser'),
	(3, 'Henna');

INSERT INTO habits (habit_id, customer_id, sleep_types_id, substance_use_types_id, emotional_state_types_id, sun_exposure_id, sunscreen, physical_activity, created_at)
VALUES
  (1, 1, 1, 2, 3, 1, 'Sim', '3 vezes por semana', NOW()),
  (2, 2, 2, 1, 4, 2, 'Não', '1 vez por semana', NOW()),
  (3, 3, 1, 3, 2, 1, 'Sim', 'Todos os dias', NOW()),
  (4, 4, 2, 2, 5, 2, 'Não', '2 vezes por semana', NOW()),
  (5, 5, 3, 1, 3, 1, 'Sim', '4 vezes por semana', NOW()),
  (6, 6, 1, 3, 4, 2, 'Sim', '3 vezes por semana', NOW()),
  (7, 7, 2, 1, 2, 1, 'Não', '1 vez por semana', NOW()),
  (8, 8, 1, 2, 5, 2, 'Sim', '5 vezes por semana', NOW()),
  (9, 9, 3, 1, 4, 1, 'Não', '2 vezes por semana', NOW()),
  (10, 10, 1, 3, 3, 2, 'Sim', 'Todos os dias', NOW());

INSERT INTO medical_histories (medical_history_id, customer_id, disease_id, medical_treatment, aesthetic_treatment, aesthetic_treatment_ongoing, cosmetics_in_use, medication_in_use, allergies, pacemaker_prosthesis, oncological, cardiac, epilepsy, health_problems, intestines, obesity, surgery, family_history, keloid_propensity, stretch_marks_propensity, created_at)
VALUES
  (1, 1, 1, 'Sim', 'Não', 'NSA', 'Não', 'Não', 'Nenhuma', 'Não', 'Não', 'Sim', true, 0, true, false, 'Não', 'Nenhuma', false, false, NOW()),
  (2, 2, 2, 'Sim', 'Sim', 'Não', 'Sim', 'Não', 'Nenhuma', 'Não', 'Não', 'Não', false, 0, false, true, 'Não', 'Diabetes', false, false, NOW()),
  (3, 3, 3, 'Sim', 'Não', 'NSA', 'Não', 'Sim', 'Nenhuma', 'Não', 'Não', 'Sim', true, 2, true, true, 'Não', 'Nenhuma', false, false, NOW()),
  (4, 4, 4, 'Sim', 'Não', 'NSA', 'Não', 'Não', 'Nenhuma', 'Não', 'Sim', 'Sim', false, 1, true, false, 'Não', 'Nenhuma', false, false, NOW()),
  (5, 5, 5, 'Não', 'Sim', 'Não', 'Não', 'Não', 'Nenhuma', 'Não', 'Não', 'Sim', false, 0, true, false, 'Não', 'Câncer', false, false, NOW()),
  (6, 6, 6, 'Não', 'Não', 'NSA', 'Sim', 'Sim', 'Nenhuma', 'Não', 'Não', 'Sim', true, 1, false, true, 'Não', 'Nenhuma', false, false, NOW()),
  (7, 7, 7, 'Sim', 'Não', 'NSA', 'Não', 'Não', 'Nenhuma', 'Não', 'Não', 'Sim', false, 0, true, true, 'Não', 'Nenhuma', false, false, NOW()),
  (8, 8, 8, 'Sim', 'Sim', 'Sim', 'Não', 'Não', 'Nenhuma', 'Sim', 'Não', 'Não', false, 0, false, true, 'Não', 'Nenhuma', true, true, NOW()),
  (9, 9, 9, 'Sim', 'Não', 'NSA', 'Sim', 'Não', 'Nenhuma', 'Não', 'Sim', 'Não', false, 0, true, false, 'Sim', 'Nenhuma', false, true, NOW()),
  (10, 10, 10, 'Não', 'Sim', 'Não', 'Não', 'Não', 'Nenhuma', 'Não', 'Não', 'Sim', false, 1, false, true, 'Não', 'Nenhuma', false, false, NOW());


INSERT INTO women_related (women_related_id, customer_id, contraceptive_id, pregnancy, puberty, menopause, hysterectomy, pms, quantity_pregnancy, breast_feeding, contraceptive_methods, last_menstruation, hormone_replacement, created_at)
VALUES
  (1, 1, 1, false, true, false, false, false, 0, false, 'Pílula Anticoncepcional', '2023-07-10 00:00:00', false, NOW()),
  (2, 2, 2, false, false, false, false, false, 0, false, 'Preservativo Masculino', '2023-07-15 00:00:00', false, NOW()),
  (3, 3, 3, false, true, false, false, false, 0, false, 'Anel Vaginal', '2023-07-08 00:00:00', false, NOW()),
  (4, 4, 4, false, false, false, false, false, 0, false, 'Implante Contraceptivo', '2023-07-25 00:00:00', false, NOW()),
  (5, 5, 5, false, true, false, false, false, 0, false, 'DIU (Dispositivo Intrauterino)', '2023-07-18 00:00:00', false, NOW()),
  (6, 6, 6, false, false, false, false, false, 0, false, 'Injeção Anticoncepcional', '2023-07-21 00:00:00', false, NOW()),
  (7, 7, 7, false, true, false, false, false, 0, false, 'Pílula Anticoncepcional', '2023-07-12 00:00:00', false, NOW()),
  (8, 8, 8, false, false, false, false, false, 0, false, 'Preservativo Feminino', '2023-07-23 00:00:00', false, NOW()),
  (9, 9, 9, false, true, false, false, false, 0, false, 'Adesivo Anticoncepcional', '2023-07-16 00:00:00', false, NOW()),
  (10, 10, 10, false, false, false, false, false, 0, false, 'Método de Tabelinha', '2023-07-19 00:00:00', false, NOW());



INSERT INTO appointments (appointment_id, customer_id, appointment_date, created_at)
VALUES
  (1, 1, '2023-07-25 10:00:00', NOW()),
  (2, 2, '2023-07-26 14:30:00', NOW()),
  (3, 3, '2023-07-27 16:45:00', NOW()),
  (4, 4, '2023-07-28 09:15:00', NOW()),
  (5, 5, '2023-07-29 11:30:00', NOW()),
  (6, 6, '2023-07-30 13:00:00', NOW()),
  (7, 7, '2023-08-01 15:45:00', NOW()),
  (8, 8, '2023-08-02 12:30:00', NOW()),
  (9, 9, '2023-08-03 08:00:00', NOW()),
  (10, 10, '2023-08-04 17:00:00', NOW());

INSERT INTO procedures (procedure_id, appointment_id, procedure_name_id, corporal_area_id, actual_session, total_sessions, signature, created_at)
VALUES
  (1, 1, 1, 5, 1, 5, 'assinatura1.jpg', NOW()),
  (2, 2, 2, 13, 2, 10, 'assinatura2.jpg', NOW()),
  (3, 3, 3, 1, 1, 3, 'assinatura3.jpg', NOW()),
  (4, 4, 1, 10, 1, 4, 'assinatura4.jpg', NOW()),
  (5, 5, 3, 20, 2, 8, 'assinatura5.jpg', NOW()),
  (6, 6, 2, 9, 3, 12, 'assinatura6.jpg', NOW()),
  (7, 7, 1, 17, 1, 6, 'assinatura7.jpg', NOW()),
  (8, 8, 2, 7, 2, 6, 'assinatura8.jpg', NOW()),
  (9, 9, 3, 15, 1, 5, 'assinatura9.jpg', NOW()),
  (10, 10, 1, 3, 1, 3, 'assinatura10.jpg', NOW()),
  (11, 1, 2, 8, 2, 8, 'assinatura11.jpg', NOW()),
  (12, 2, 3, 19, 1, 5, 'assinatura12.jpg', NOW()),
  (13, 3, 1, 11, 3, 9, 'assinatura13.jpg', NOW()),
  (14, 4, 2, 12, 1, 4, 'assinatura14.jpg', NOW()),
  (15, 5, 3, 18, 2, 6, 'assinatura15.jpg', NOW()),
  (16, 6, 1, 6, 2, 6, 'assinatura16.jpg', NOW()),
  (17, 7, 2, 14, 3, 9, 'assinatura17.jpg', NOW()),
  (18, 8, 3, 4, 1, 4, 'assinatura18.jpg', NOW()),
  (19, 9, 1, 2, 1, 2, 'assinatura19.jpg', NOW()),
  (20, 10, 2, 16, 2, 6, 'assinatura20.jpg', NOW());

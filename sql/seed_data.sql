-- =====================================================================
-- TITIK BEKAL SATRAD 204 TARAKAN — Data Migrasi Awal (80 Barang)
-- Diambil dari Register_TB_Stock_Opname.xlsx. Jalankan SETELAH schema.sql
-- lewat phpMyAdmin (Import), sekali saja saat setup awal.
-- =====================================================================
SET NAMES utf8mb4;

-- ---------- Dokumen Masuk ----------
INSERT INTO dokumen_masuk (kode_dokumen, jenis_dokumen, no_dokumen) VALUES
('DOK-0001', 'IP', 'IP/1514/LS/01/2024'),
('DOK-0002', 'IP', 'IP/2025/LS/01/2024'),
('DOK-0003', 'IP', 'IP/973/LS/01/2024'),
('DOK-0004', 'IP', 'IP/1342/LS/01/2023'),
('DOK-0005', 'IP', 'IP/1190/LS/01/2018'),
('DOK-0006', 'IP', 'IP/1583/LS/01/2024'),
('DOK-0007', 'IP', 'IP/1231/LS/01/2023'),
('DOK-0008', 'IP', 'IP/1580/LS/01/2023'),
('DOK-0009', 'IP', 'IP/1520/LS-W/01/2018'),
('DOK-0010', 'IP', 'IP/1346/LS/01/2024'),
('DOK-0011', 'IP', 'IP/139/LS/01/2025'),
('DOK-0012', 'IP', 'IP/325/LS/01/2023'),
('DOK-0013', 'IP', 'IP/1923/LS/01/2024'),
('DOK-0014', 'IP', 'IP/496/LS/01/2025'),
('DOK-0015', 'IP', 'IP/978/LS/01/2023'),
('DOK-0016', 'IP', 'IP/636/LS/05/2024');

-- ---------- Barang ----------
INSERT INTO barang (kode_barang, kategori, nama_barang, pn, total_barang) VALUES
('BRG-0001', 'ANTENNA', 'LOW NOISE AMPLIFIER', '5996-LAU-354-00', 2),
('BRG-0002', 'ANTENNA', 'OIL GEAR BOX (OMALA S2 GX220)', 'S2-GX220', 10),
('BRG-0003', 'TRANSMITTER', 'BODY STABILIZER UNIT', '20940-700-00-6', 2),
('BRG-0004', 'TRANSMITTER', 'FAN 230 VAC MERK EBMPAPST 120x120MM', '4658N', 10),
('BRG-0005', 'TRANSMITTER', 'FAN 230 VAC MERK EBMPAPST 80x80MM', '8556N', 2),
('BRG-0006', 'TRANSMITTER', 'FAN 220 VAC 3300 RPM MERK ROTRON', '340ZH', 14),
('BRG-0007', 'RECEIVER PROCESSING', 'IF UNIT', '5895-45-000-7144', 2),
('BRG-0008', 'RECEIVER PROCESSING', 'IF UNIT (MATCH PAIR) RADAR PLESSEY', 'CMPR-490-IF', 1),
('BRG-0009', 'RECEIVER PROCESSING', 'BACKROUND AVERAGE', '39107-600-00-7', 1),
('BRG-0010', 'RECEIVER PROCESSING', 'PARAMETER PROCESSING', '39107-200-00-6', 3),
('BRG-0011', 'RECEIVER PROCESSING', 'AZIMUTH DESQUINT', '39104-100-00-1', 2),
('BRG-0012', 'DISPLAY AND COMPUTER', 'EDD TID/TOTE', '678/7/34038/000', 1),
('BRG-0013', 'DISPLAY AND COMPUTER', 'POWER SUPPLY P 1000', '901009', 1),
('BRG-0014', 'SSR', 'LOGARITHMIC IF AMPLIFIER XI', '803771', 3),
('BRG-0015', 'SSR', 'PC 11', '807065', 1),
('BRG-0016', 'SSR', 'PC 12 CABLE DRIVER', '803782', 2),
('BRG-0017', 'SSR', 'PC 3', '807068', 1),
('BRG-0018', 'SSR', 'PC 5', '807063', 1),
('BRG-0019', 'SSR', 'PC 8', '803781', 1),
('BRG-0020', 'SSR', 'PC 9', '803778', 1),
('BRG-0021', 'SSR', 'PC 10', '803779/002', 1),
('BRG-0022', 'SSR', 'PEC 5', '805902', 1),
('BRG-0023', 'SSR', 'PEC 8', '805904/000', 2),
('BRG-0024', 'SSR', 'PEC 9', '805905/000/02', 1),
('BRG-0025', 'SSR', 'PEC 10', '807440/000', 1),
('BRG-0026', 'SSR', 'PEC 13', '805909/000', 1),
('BRG-0027', 'SSR', 'POWER SUPPLY BOARD', '803796', 1),
('BRG-0028', 'SSR', 'POWER SUPPLY BOARD X14', '803796/001', 1),
('BRG-0029', 'SSR', 'RECIVER MODULE', '803760', 1),
('BRG-0030', 'COMMUNICATION', 'DATA CARD VSAT PLUS II E', '04-1030-001', 1),
('BRG-0031', 'COMMUNICATION', 'MODEM TDMA VSATPLUS VER.007', '04-0630-007', 1),
('BRG-0032', 'ANCILLARIES', 'ACCUMULATOR AC 5PK (MERK EMERSON, TYPE A-AS4105)', 'A-AS4105', 2),
('BRG-0033', 'ANCILLARIES', 'ACU CABIN RADAR PLESSEY', 'ACU-0702402325', 1),
('BRG-0034', 'ANCILLARIES', 'ACU MAIN CONTRACTOR RELAY (MERK TOGAMI)', NULL, 5),
('BRG-0035', 'ANCILLARIES', 'ACU PLESSEY THERMAL OVERLOAD RELAY', NULL, 6),
('BRG-0036', 'ANCILLARIES', 'ANTI SCUFING PASTE MERK SPAANJARD', '845', 5),
('BRG-0037', 'ANCILLARIES', 'CIRCUIT BREAKER THERMAL', '42141-830-00-2', 1),
('BRG-0038', 'ANCILLARIES', 'COMPRESSOR AC 5 PK', '2R61KC-TFD-522', 4),
('BRG-0039', 'ANCILLARIES', 'CONTROL CARD AC', 'F021.MCB.DB.001', 2),
('BRG-0040', 'ANCILLARIES', 'CONTRO CARD AC', 'F021.MCB.DB.002', 2),
('BRG-0041', 'ANCILLARIES', 'ELEMENT PRE FUEL FILTER MERK DEUTZ', '01340130', 20),
('BRG-0042', 'ANCILLARIES', 'ETHYLENE GLYCOL MERK MONOETHYLENE', NULL, 1),
('BRG-0043', 'ANCILLARIES', 'FILTER CARDTRIDGE WATER COOLING', 'MRX4', 25),
('BRG-0044', 'ANCILLARIES', 'FILTER UDARA MERK MANN FILTER', 'C23610', 4),
('BRG-0045', 'ANCILLARIES', 'GRASE MERK CASTROL (PREMIUM HEAVY DUTY)', NULL, 12),
('BRG-0046', 'ANCILLARIES', 'MOTOR EVAPORATOR ACU (MERK HAFF)', NULL, 8),
('BRG-0047', 'ANCILLARIES', 'SENSOR ACU 5 PK TYPE F021MCBDB 002 (F021 MCB DB 002)', 'F021-MCB-DB-002', 2),
('BRG-0048', 'GENSET', 'ACCU 12 V 150 AH MERK YUASA', '145G51-N150', 2),
('BRG-0049', 'GENSET', 'AVR', 'AS 440', 5),
('BRG-0050', 'GENSET', 'AVR', 'MX 341', 7),
('BRG-0051', 'GENSET', 'AVR', 'SX 440', 4),
('BRG-0052', 'GENSET', 'DINAMO CHARGER MERK DEUTZ', '01183852', 1),
('BRG-0053', 'GENSET', 'DINAMO STARTER 12V 140 KVA MERK BOSCH', 'C118109281CZ', 2),
('BRG-0054', 'GENSET', 'DINAMO STARTER 12V 150 KVA MERK DEUTZ', '1183712', 2),
('BRG-0055', 'GENSET', 'FUEL FILTER 170/140 KVA TYPE 01174422', '0117-4422', 24),
('BRG-0056', 'GENSET', 'FILTER UDARA MERK MANN FILTER', 'C23610', 4),
('BRG-0057', 'GENSET', 'MCCB METASOL ABN 403C 300A', NULL, 1),
('BRG-0058', 'GENSET', 'MCCB SCHNEIDER NSX 100 TO 360', NULL, 1),
('BRG-0059', 'GENSET', 'MOTOR STARTER BOSCH 12 V', 'BO230-006', 3),
('BRG-0060', 'GENSET', 'OIL FITER G 170', '01174421', 40),
('BRG-0061', 'GENSET', 'OIL FILTER', '0118-3574', 21),
('BRG-0062', 'GENSET', 'PACKING HEAD CYLINDER GASKET DEUTZ BF6M1013EC', NULL, 2),
('BRG-0063', 'GENSET', 'RADIOATOR COOLANT 4 LITER, MERK PRESTONE', NULL, 20),
('BRG-0064', 'GENSET', 'RADIATOR GENSET DEUTZ 140 KVA, BF6M1013FC, MERK DEUTZ', NULL, 1),
('BRG-0065', 'GENSET', 'RELAY TYPE V23154-D0721-F104', NULL, 1),
('BRG-0066', 'GENSET', 'RELAY MERK OMRON, TYPE MKS2P', NULL, 4),
('BRG-0067', 'GENSET', 'RELAY SWITCH 12VDC, TYPE MY2N-GSR', NULL, 4),
('BRG-0068', 'GENSET', 'RING NOZZLE, 0417 5610 (REFF DOC)', NULL, 9),
('BRG-0069', 'GENSET', 'TOOGLE COMMUTATEUR COS CD 400A (TYPE SIRCOVER 4P 400A)', '4P-400A', 1),
('BRG-0070', 'GENSET', 'TURBO CHARGER 28V GENSET DEUTZ 170KVA', NULL, 2),
('BRG-0071', 'GENSET', 'TURBO CHARGER GENSET DEUTZ 140 KVA, BF6M1013EC', NULL, 2),
('BRG-0072', 'GENSET', 'V-BELT (9.5 X 1300 LA) (MERK BANDO RPF)', NULL, 20),
('BRG-0073', 'GENSET', 'V-BELT MERK BANDO REP', '12.5 X 1175 LA', 20),
('BRG-0074', 'GENSET', 'V-BELT MERK DEUTZ', 'WA-01180642', 20),
('BRG-0075', 'GENSET', 'V-BELT MERK DEUTZ', 'WA-01178738', 14),
('BRG-0076', 'GENSET', 'V-BELT MERK DEUTZ', 'WA-01154307', 7),
('BRG-0077', 'AUP', 'FIELDFOX SIGNAL ANALYZER (MODEL N9935B)', 'N9935B', 1),
('BRG-0078', 'AUP', 'LOGIC ANALYZER MERK KEYSIGHT', '16863-A', 1),
('BRG-0079', 'UPS', 'UPS MESIN SANDI (MODEL BX1600MI-MS)', 'BX1600MI-MS', 1),
('BRG-0080', 'KOMPUTER', 'KOMPUTER PC MERK AXIOO', NULL, 1);

-- ---------- Barang <-> Dokumen (many-to-many) ----------
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0001'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0001'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0002'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0003'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0003'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0004'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0005'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0006'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0007'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0004'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0008'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0005'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0009'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0010'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0011'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0012'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0008'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0013'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0003'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0014'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0015'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0016'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0009'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0017'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0018'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0019'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0020'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0021'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0022'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0023'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0024'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0025'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0026'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0007'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0027'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0003'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0028'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0001'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0029'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0006'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0030'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0010'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0031'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0011'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0032'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0012'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0033'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0013'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0035'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0012'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0035'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0036'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0038'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0012'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0039'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0040'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0041'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0042'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0043'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0015'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0044'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0044'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0045'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0046'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0012'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0047'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0012'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0048'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0051'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0052'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0053'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0054'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0055'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0015'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0056'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0058'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0015'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0060'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0015'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0061'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0015'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0062'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0063'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0064'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0065'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0066'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0067'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0068'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0069'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0070'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0071'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0073'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0002'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0075'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0076'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0014'));
INSERT INTO barang_dokumen (barang_id, dokumen_id) VALUES ((SELECT id FROM barang WHERE kode_barang = 'BRG-0079'), (SELECT id FROM dokumen_masuk WHERE kode_dokumen = 'DOK-0016'));

-- ---------- Unit SN ----------
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0001', id, '004', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0001';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0002', id, '005', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0001';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0003', id, 'PRN NB 06707', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0003';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0004', id, 'PRN NN 20451', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0003';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0005', id, '1112-0008', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0007';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0006', id, '1112-0009', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0007';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0007', id, '0010318490 IF', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0008';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0008', id, '22451', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0009';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0009', id, '954934', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0010';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0010', id, '894315', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0010';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0011', id, '981100', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0010';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0012', id, '894383', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0011';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0013', id, '908230', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0011';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0014', id, 'VCS0900-123-003', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0012';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0015', id, '541', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0013';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0016', id, '146-82', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0014';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0017', id, '188-85', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0014';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0018', id, '233-91', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0014';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0019', id, '143072', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0015';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0020', id, '17043', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0016';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0021', id, '232-91', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0016';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0022', id, '23419', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0017';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0023', id, '041-90', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0018';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0024', id, '236/91', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0019';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0025', id, '280-90', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0020';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0026', id, '250-91', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0021';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0027', id, '4169', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0022';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0028', id, '005-85', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0023';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0029', id, '1430512', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0023';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0030', id, '4711', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0024';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0031', id, '143062', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0025';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0032', id, '143092', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0026';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0033', id, 'FEL22-004', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0027';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0034', id, '220', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0028';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0035', id, 'AAL353-91', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0029';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0036', id, '19-0060', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0030';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0037', id, '09-0015', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0031';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0038', id, '207024001', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0033';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0039', id, '0015848', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0047';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0040', id, '0016243', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0047';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0041', id, '6110-99-916-1070', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0049';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0042', id, '6110-99-367-1766', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0050';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0043', id, '5995-AU-004-1230', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0058';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0044', id, '2940-12-186-3373', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0061';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0045', id, 'MY63185062', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0077';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0046', id, 'MY-60270119', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0078';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0047', id, 'MERK APC', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0079';
INSERT INTO unit_sn (kode_unit, barang_id, sn, status) SELECT 'UNIT-0048', id, '02235101210482004581', 'Tersedia' FROM barang WHERE kode_barang = 'BRG-0080';

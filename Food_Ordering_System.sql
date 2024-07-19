-- Dropping tables with CASCADE CONSTRAINTS to remove all related constraints
DROP TABLE Invoice CASCADE CONSTRAINTS;
DROP TABLE Cart_food CASCADE CONSTRAINTS;
DROP TABLE Cart CASCADE CONSTRAINTS;
DROP TABLE Food CASCADE CONSTRAINTS;
DROP TABLE Inventory CASCADE CONSTRAINTS;
DROP TABLE Order_ CASCADE CONSTRAINTS;
DROP TABLE Staff CASCADE CONSTRAINTS;
DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE "Table" CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Chef CASCADE CONSTRAINTS;
DROP TABLE Admin CASCADE CONSTRAINTS;
DROP TABLE Waiter CASCADE CONSTRAINTS;
DROP TABLE Meal CASCADE CONSTRAINTS;
DROP TABLE Dessert CASCADE CONSTRAINTS;
DROP TABLE Beverage CASCADE CONSTRAINTS;

-- Now, creating tables with the corrected definitions
-- Customer Table
CREATE TABLE Customer (
  CUSTOMER_ID VARCHAR2(5) PRIMARY KEY,
  CUSTOMER_FirstName VARCHAR2(30),
  CUSTOMER_LastName VARCHAR2(30),
  CUSTOMER_Email VARCHAR2(30),
  CUSTOMER_Phone VARCHAR2(12)
);

INSERT INTO Customer (CUSTOMER_ID, CUSTOMER_FirstName, CUSTOMER_LastName, CUSTOMER_Email, CUSTOMER_Phone)
VALUES
  ('C001','Desmond','Ho','desmondhjs@1utar.my','0126615856');
INSERT INTO Customer (CUSTOMER_ID, CUSTOMER_FirstName, CUSTOMER_LastName, CUSTOMER_Email, CUSTOMER_Phone)
VALUES
  ('C002','Lee','Hwa','leehwa3@1utar.my','0146668455');
INSERT INTO Customer (CUSTOMER_ID, CUSTOMER_FirstName, CUSTOMER_LastName, CUSTOMER_Email, CUSTOMER_Phone)
VALUES
  ('C003','Taylor','Swift','taylor222@1utar.my','0187754612');
INSERT INTO Customer (CUSTOMER_ID, CUSTOMER_FirstName, CUSTOMER_LastName, CUSTOMER_Email, CUSTOMER_Phone)
VALUES
  ('C004','Kim','White','kimmm@1utar.my','0189956458');
INSERT INTO Customer (CUSTOMER_ID, CUSTOMER_FirstName, CUSTOMER_LastName, CUSTOMER_Email, CUSTOMER_Phone)
VALUES
  ('C005','Lee','Mark','mark363@1utar.my','0126615856');

INSERT INTO Customer (CUSTOMER_ID, CUSTOMER_FirstName, CUSTOMER_LastName, CUSTOMER_Email, CUSTOMER_Phone)
VALUES
  ('C006','Lee','Min','min3@1utar.my','0124755132');

INSERT INTO Customer VALUES ('C007','Martin','Soh','martinn@1utar.my','0174465892');
INSERT INTO Customer VALUES ('C008','Ye','Shu','Shu88@1utar.my','0177744582');
INSERT INTO Customer VALUES ('C009','Minnie','Lee','minnine@1utar.my','0121741554');
INSERT INTO Customer VALUES ('C010','Chae','Won','chaechae@1utar.my','0135544134');
INSERT INTO Customer VALUES ('C011','Chae','Min','chaemin333@1utar.my','0174477761');
INSERT INTO Customer VALUES ('C012','Chae','Suu','chaesuu8@1utar.my','0199955912');
INSERT INTO Customer VALUES ('C013','Won','Young','wonyoung23@1utar.my','0102255254');
INSERT INTO Customer VALUES ('C014','Tae','Young','Taeyong642@1utar.my','0178877877');
INSERT INTO Customer VALUES ('C015','Tae','Won','taewonn98@1utar.my','0162266460');
INSERT INTO Customer VALUES ('C016','Tae','Min','Taemin11@1utar.my','0113311311');
INSERT INTO Customer VALUES ('C017','Sun','Mi','Sunm3i@1utar.my','0198843107');
INSERT INTO Customer VALUES ('C018','Jung','Won','jungwonn55@1utar.my','0198852001');
INSERT INTO Customer VALUES ('C019','Jung','Kok','jungkoook@1utar.my','0104471633');
INSERT INTO Customer VALUES ('C020','Jung','Min','Jungm@1utar.my','0147788542');

-- Table Table
CREATE TABLE "Table" (
  Table_ID VARCHAR2(5) PRIMARY KEY,
  Table_Location VARCHAR2(10),
  Table_Status VARCHAR2(15),
  CUSTOMER_ID VARCHAR2(5),
  CONSTRAINT fk_customer_table FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID)
);

INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T001','Indoor','Reserved','C001');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T002','Indoor','Available','');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T003','Indoor','Reserved','C002');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T004','Indoor','Available','');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T005','Indoor','Reserved','C003');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T006','Outdoor','Available','');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T007','Outdoor','Reserved','C004');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T008','Outdoor','Available','');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T009','Outdoor','Reserved','C005');
INSERT INTO "Table" (Table_ID, Table_Location, Table_Status, CUSTOMER_ID)
VALUES
  ('T010','Outdoor','Available','');

INSERT INTO "Table" VALUES ('T011','Indoor','Occupied','C006');
INSERT INTO "Table" VALUES ('T012','Indoor','Occupied','C007');
INSERT INTO "Table" VALUES ('T013','Indoor','Occupied','C008');
INSERT INTO "Table" VALUES ('T014','Outdoor','Occupied','C009');
INSERT INTO "Table" VALUES ('T015','Outdoor','Occupied','C010');

INSERT INTO "Table" VALUES ('T016','Indoor','Occupied','C011');
INSERT INTO "Table" VALUES ('T017','Indoor','Occupied','C012');
INSERT INTO "Table" VALUES ('T018','Outdoor','Occupied','C013');
INSERT INTO "Table" VALUES ('T019','Outdoor','Occupied','C014');
INSERT INTO "Table" VALUES ('T020','Outdoor','Occupied','C015');

INSERT INTO "Table" VALUES ('T021','Indoor','Occupied','C016');
INSERT INTO "Table" VALUES ('T022','Indoor','Occupied','C017');
INSERT INTO "Table" VALUES ('T023','Outdoor','Occupied','C018');
INSERT INTO "Table" VALUES ('T024','Outdoor','Occupied','C019');
INSERT INTO "Table" VALUES ('T025','Outdoor','Occupied','C020');




-- Reservation Table
CREATE TABLE Reservation (
  RESERVATION_ID VARCHAR2(5) PRIMARY KEY,
  RESERVATION_Time VARCHAR2(8),
  RESERVATION_Date DATE,
  CUSTOMER_ID VARCHAR2(5),
  Table_ID VARCHAR2(5),
 CONSTRAINT fk_customer_reservation FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID),
 CONSTRAINT fk_table_reservation FOREIGN KEY (Table_ID) REFERENCES "Table"(Table_ID)
);

INSERT INTO Reservation (RESERVATION_ID, RESERVATION_Time, RESERVATION_Date, CUSTOMER_ID,Table_ID)
VALUES
  ('R001','14:34',TO_DATE('03-04-2024', 'DD-MM-YYYY '), 'C001','T001');
INSERT INTO Reservation (RESERVATION_ID, RESERVATION_Time, RESERVATION_Date, CUSTOMER_ID,Table_ID)
VALUES
  ('R002','09:26',TO_DATE('03-04-2024', 'DD-MM-YYYY '), 'C002','T003');
INSERT INTO Reservation (RESERVATION_ID, RESERVATION_Time, RESERVATION_Date, CUSTOMER_ID,Table_ID)
VALUES
  ('R003','12:30',TO_DATE('04-04-2024', 'DD-MM-YYYY '), 'C003','T005');
INSERT INTO Reservation (RESERVATION_ID, RESERVATION_Time, RESERVATION_Date, CUSTOMER_ID,Table_ID)
VALUES
  ('R004','12:00',TO_DATE('05-04-2024', 'DD-MM-YYYY '), 'C004','T007');
INSERT INTO Reservation (RESERVATION_ID, RESERVATION_Time, RESERVATION_Date, CUSTOMER_ID,Table_ID)
VALUES
  ('R005','17:37',TO_DATE('10-04-2024', 'DD-MM-YYYY '), 'C005','T009');


-- Staff Table
CREATE TABLE Staff (
  STAFF_ID VARCHAR2(5) PRIMARY KEY,
  STAFF_ShiftHour VARCHAR2(20),
  STAFF_Salary VARCHAR2(30),
  STAFF_FirstName VARCHAR2(30),
  STAFF_LastName VARCHAR2(30),
  STAFF_Phone VARCHAR2(12),
  STAFF_Role VARCHAR2(10)
);

INSERT INTO Staff VALUES ('S001', 'Morning','1300', 'Ong','Sheng', '0119877546', 'Admin');
INSERT INTO Staff VALUES ('S002', 'Morning','1000', 'Lee','Mary', '0178846524', 'Waiter');
INSERT INTO Staff VALUES ('S003', 'Evening','2000', 'Kim','Blue', '0124445876', 'Chef');
INSERT INTO Staff VALUES ('S004', 'Morning','1000', 'Lee','Hai', '0101423693', 'Waiter');
INSERT INTO Staff VALUES ('S005', 'Evening','2000', 'Anthony','Lee', '0174468521', 'Chef');
INSERT INTO Staff VALUES ('S006', 'Evening','1050', 'Grey','Tan', '0188898554', 'Waiter');
INSERT INTO Staff VALUES ('S007', 'Off','1300', 'Ng','Fang', '0136645127', 'Admin');
INSERT INTO Staff VALUES ('S008', 'Off','2050', 'White','Lee', '0124945756', 'Chef');
INSERT INTO Staff VALUES ('S009', 'Off','1800', 'Ming','Liang', '0177779546', 'Chef');
INSERT INTO Staff VALUES ('S010', 'Off','1980', 'Vary','Lu', '0197854624', 'Chef');
INSERT INTO Staff VALUES ('S011', 'Morning','1400', 'Wah','Fang', '0178912557', 'Admin');
INSERT INTO Staff VALUES ('S012', 'Morning','1360', 'Foong','Li', '0137788446', 'Admin');
INSERT INTO Staff VALUES ('S013', 'Morning','1200', 'Racheal','Ng', '0139998746', 'Admin');
INSERT INTO Staff VALUES ('S014', 'Off','900', 'John','Tan', '0198977542', 'Waiter');
INSERT INTO Staff VALUES ('S015', 'Off','1000', 'Sam','Smith', '0147566132', 'Waiter');


--Chef Table
CREATE TABLE Chef (
  STAFF_ID VARCHAR2(5) PRIMARY KEY,
  CONSTRAINT fk_staff_chef FOREIGN KEY (STAFF_ID) REFERENCES Staff(STAFF_ID)
);

INSERT INTO Chef(STAFF_ID) VALUES ('S003');
INSERT INTO Chef(STAFF_ID) VALUES ('S005');
INSERT INTO Chef(STAFF_ID) VALUES ('S008');
INSERT INTO Chef(STAFF_ID) VALUES ('S009');
INSERT INTO Chef(STAFF_ID) VALUES ('S010');


--Admin Table
CREATE TABLE Admin (
  STAFF_ID VARCHAR2(5) PRIMARY KEY,
  CONSTRAINT fk_staff_admin FOREIGN KEY (STAFF_ID) REFERENCES Staff(STAFF_ID));

INSERT INTO Admin (STAFF_ID) VALUES ('S001');
INSERT INTO Admin (STAFF_ID) VALUES ('S007');
INSERT INTO Admin (STAFF_ID) VALUES ('S011');
INSERT INTO Admin (STAFF_ID) VALUES ('S012');
INSERT INTO Admin (STAFF_ID) VALUES ('S013');

--Table Waiter
CREATE TABLE Waiter (
  STAFF_ID VARCHAR2(5) PRIMARY KEY,
  CONSTRAINT fk_staff_waiter FOREIGN KEY (STAFF_ID) REFERENCES Staff(STAFF_ID)
);

INSERT INTO Waiter (STAFF_ID) VALUES ('S002');
INSERT INTO Waiter (STAFF_ID) VALUES ('S004');
INSERT INTO Waiter (STAFF_ID) VALUES ('S006');
INSERT INTO Waiter (STAFF_ID) VALUES ('S014');
INSERT INTO Waiter (STAFF_ID) VALUES ('S015');

-- Inventory Table
CREATE TABLE Inventory (
  INVENTORY_ID VARCHAR2(5) PRIMARY KEY,
  ITEM_Name VARCHAR2(30),
  ITEM_Desc VARCHAR2(30),
  ITEM_Quantity NUMBER(4),
  ITEM_Unit NUMBER(10,1),
  ITEM_Price NUMBER(10,2)
);
INSERT INTO Inventory VALUES ('IT001', 'Flour','Corn Flour', '100', '1.0', '15.00');
INSERT INTO Inventory VALUES ('IT002', 'Oil','Olive oil', '250', '1.5', '25.00');
INSERT INTO Inventory VALUES ('IT003', 'Spices','Black pepper', '20', '0.2', '10.00');
INSERT INTO Inventory VALUES ('IT004', 'Chili','Chili Flakes', '20', '0.2', '10.00');
INSERT INTO Inventory VALUES ('IT005', 'Chicken','Chicken Breast, Chicken Thigh', '50', '1.0', '50.00');
INSERT INTO Inventory VALUES ('IT006', 'Tofu','White Tofu', '20', '1.0', '10.00');
INSERT INTO Inventory VALUES ('IT007', 'Cucumber','Japanese cucumber', '40', '5.0', '30.00');
INSERT INTO Inventory VALUES ('IT008', 'Rice','White Rice', '100', '5.0', '45.00');
INSERT INTO Inventory VALUES ('IT009', 'Sugar','Brown sugar', '100', '1.0', '30.00');
INSERT INTO Inventory VALUES ('IT010', 'Tea bags','green tea,peach tea and others', '55', '1.0', '45.00');

-- Food Table
CREATE TABLE Food (
  FOOD_ID VARCHAR2(5) PRIMARY KEY,
  FOOD_Name VARCHAR2(40),
  FOOD_Details VARCHAR2(100),
  FOOD_Price NUMBER(10,2),
  INVENTORY_ID VARCHAR2(5),
  CUSTOMER_ID VARCHAR2(5),
  CONSTRAINT fk_inventory_food FOREIGN KEY (INVENTORY_ID) REFERENCES Inventory(INVENTORY_ID),
  CONSTRAINT fk_customer_food FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID)
);

INSERT INTO Food VALUES ('F001', 'Nasi Lemak with Fried Chicken','served with roasted nuts, 
egg, anchovies, and slices of cucumber', '15.90', 'IT008', 'C006');
INSERT INTO Food VALUES ('F002', 'Mapo Tofu with White Rice','tofu cooked with rich spicy, and savory sauce',
'8.00','IT006', 'C007');
INSERT INTO Food VALUES ('F003', 'Hainanese Chicken Rice','succulent poached white chicken served on fragrant rice with light soy sauce',
'18.00','IT005', 'C008');
INSERT INTO Food VALUES ('F004', 'Grilled Chicken Chop','marinated chicken covered in a rich, bold black pepper sauce',
 '20.90', 'IT005', 'C009');
INSERT INTO Food VALUES ('F005', 'Teriyaki Chicken Poke Bowl','sushi rice and teriyaki chicken, topped with vegetables and roasted sesame',
 '18.00', 'IT007', 'C010');

INSERT INTO Food VALUES ('F006', 'Cheese cake','serves with graham cracker crumb crust',
 '15.00', 'IT001', 'C011');
INSERT INTO Food VALUES ('F007', 'Chocolate Lava cake','chocolate cake with a liquid chocolate core',
 '11.00', 'IT001', 'C012');
INSERT INTO Food VALUES ('F008', 'Caramel Pudding','plain custard with sugar syrup',
 '8.00', 'IT001', 'C013');
INSERT INTO Food VALUES ('F009', 'Almond Cupcake','with almond nuts and frosting',
 '5.00', 'IT001', 'C014');
INSERT INTO Food VALUES ('F010', 'Brownies','a chocolate baked confection',
 '10.00', 'IT001', 'C015');

INSERT INTO Food VALUES ('F011', 'Green Tea','green tea aroma',
 '3.00', 'IT010', 'C016');
INSERT INTO Food VALUES ('F012', 'Iced Chocolate','served with chocolate chips',
 '13.00', 'IT010', 'C017');
INSERT INTO Food VALUES ('F013', 'Peach Tea','fruity aroma',
 '4.00', 'IT010', 'C018');
INSERT INTO Food VALUES ('F014', 'Ice lemon tea','fresh and tangy taste of lemon',
 '4.00', 'IT010', 'C019');
INSERT INTO Food VALUES ('F015', 'Milk tea','combination of tea and milk',
 '6.00', 'IT010', 'C020');

--Meal Table
CREATE TABLE Meal (
  FOOD_ID VARCHAR2(5) PRIMARY KEY,
  CONSTRAINT fk_food_meal FOREIGN KEY (FOOD_ID) REFERENCES Food(FOOD_ID)
);

INSERT INTO Meal(FOOD_ID) VALUES ('F001');
INSERT INTO Meal(FOOD_ID) VALUES ('F002');
INSERT INTO Meal(FOOD_ID) VALUES ('F003');
INSERT INTO Meal(FOOD_ID) VALUES ('F004');
INSERT INTO Meal(FOOD_ID) VALUES ('F005');

--Dessert Table
CREATE TABLE Dessert (
  FOOD_ID VARCHAR2(5) PRIMARY KEY,
  CONSTRAINT fk_food_dessert FOREIGN KEY (FOOD_ID) REFERENCES Food(FOOD_ID)
);

INSERT INTO Dessert(FOOD_ID) VALUES ('F006');
INSERT INTO Dessert(FOOD_ID) VALUES ('F007');
INSERT INTO Dessert(FOOD_ID) VALUES ('F008');
INSERT INTO Dessert(FOOD_ID) VALUES ('F009');
INSERT INTO Dessert(FOOD_ID) VALUES ('F010');

--Beverage Table
CREATE TABLE Beverage (
  FOOD_ID VARCHAR2(5) PRIMARY KEY,
  CONSTRAINT fk_food_beverage FOREIGN KEY (FOOD_ID) REFERENCES Food(FOOD_ID)
);

INSERT INTO Beverage(FOOD_ID) VALUES ('F011');
INSERT INTO Beverage(FOOD_ID) VALUES ('F012');
INSERT INTO Beverage(FOOD_ID) VALUES ('F013');
INSERT INTO Beverage(FOOD_ID) VALUES ('F014');
INSERT INTO Beverage(FOOD_ID) VALUES ('F015');


-- Order Table
CREATE TABLE Order_ (
  ORDER_ID VARCHAR2(7) PRIMARY KEY,
  ORDER_Date DATE,
  ORDER_Time VARCHAR2(8),
  ORDER_Status VARCHAR2(20),
  Table_ID VARCHAR2(5),
  STAFF_ID VARCHAR2(5),
  CONSTRAINT fk_table_order FOREIGN KEY (Table_ID) REFERENCES "Table"(Table_ID),
  CONSTRAINT fk_staff_order FOREIGN KEY (STAFF_ID) REFERENCES Staff(STAFF_ID)
);

INSERT INTO Order_ VALUES ('Ord001', TO_DATE('01-04-2024', 'DD-MM-YYYY'),'08:32',
'Completed','T011','S001');
INSERT INTO Order_ VALUES ('Ord002',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'09:00',
'Completed','T012','S007');
INSERT INTO Order_ VALUES ('Ord003',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'09:13',
'Completed','T013','S011');
INSERT INTO Order_ VALUES ('Ord004',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'10:24',
'Completed','T014','S012');
INSERT INTO Order_ VALUES ('Ord005',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'10:28',
'Completed','T015','S013');

INSERT INTO Order_ VALUES ('Ord006',TO_DATE('02-04-2024', 'DD-MM-YYYY'),'11:08',
'Processing','T016','S002');
INSERT INTO Order_ VALUES ('Ord007',TO_DATE('02-04-2024', 'DD-MM-YYYY'),'11:58',
'Processing','T017','S004');
INSERT INTO Order_ VALUES ('Ord008',TO_DATE('02-04-2024', 'DD-MM-YYYY'),'14:20',
'Processing','T018','S006');
INSERT INTO Order_ VALUES ('Ord009',TO_DATE('02-04-2024', 'DD-MM-YYYY'),'14:28',
'Processing','T019','S003');
INSERT INTO Order_ VALUES ('Ord010',TO_DATE('02-04-2024', 'DD-MM-YYYY'),'14:57',
'Processing','T020','S005');


-- Cart Table
CREATE TABLE Cart (
  CART_ID VARCHAR2(7) PRIMARY KEY,
  CART_Status VARCHAR2(20),
  CUSTOMER_ID VARCHAR2(5),
  CONSTRAINT fk_customer_cart FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID)
);
INSERT INTO Cart VALUES ('Cart01', 'Processing','C011');
INSERT INTO Cart VALUES ('Cart02', 'Processing','C012');
INSERT INTO Cart VALUES ('Cart03', 'Processing','C013');
INSERT INTO Cart VALUES ('Cart04', 'Processing','C014');
INSERT INTO Cart VALUES ('Cart05', 'Processing','C015');

INSERT INTO Cart VALUES ('Cart06', 'Pending','C016');
INSERT INTO Cart VALUES ('Cart07', 'Pending','C017');
INSERT INTO Cart VALUES ('Cart08', 'Pending','C018');
INSERT INTO Cart VALUES ('Cart09', 'Pending','C019');
INSERT INTO Cart VALUES ('Cart10', 'Pending','C020');



-- Cart_Food Table
CREATE TABLE Cart_food (
  CARTFOOD_ID NUMBER(2) PRIMARY KEY,
  FOOD_ID VARCHAR2(5),
  CART_ID VARCHAR2(7),
  CART_FoodQuantity NUMBER(2),
  CART_FoodCustomization VARCHAR2(100),
  CONSTRAINT fk_food_cartfood FOREIGN KEY (FOOD_ID) REFERENCES Food(FOOD_ID),
  CONSTRAINT fk_cart_cartfood FOREIGN KEY (CART_ID) REFERENCES Cart(CART_ID)
);

INSERT INTO Cart_Food VALUES ('1','F006','Cart01','1',NULL);
INSERT INTO Cart_Food VALUES ('2','F007','Cart02','1','Extra chocolate liquid');
INSERT INTO Cart_Food VALUES ('3','F008','Cart03','1',NULL);
INSERT INTO Cart_Food VALUES ('4','F009','Cart04','1','Extra almond nuts');
INSERT INTO Cart_Food VALUES ('5','F010','Cart05','1',NULL);

INSERT INTO Cart_Food VALUES ('6','F011','Cart06','1',NULL);
INSERT INTO Cart_Food VALUES ('7','F012','Cart07','1','More ice');
INSERT INTO Cart_Food VALUES ('8','F013','Cart08','1','Hot');
INSERT INTO Cart_Food VALUES ('9','F014','Cart09','1',NULL);
INSERT INTO Cart_Food VALUES ('10','F015','Cart10','1','Less Ice');


-- Invoice Table
CREATE TABLE Invoice (
  INVOICE_ID VARCHAR2(5) PRIMARY KEY,
  INVOICE_Date DATE,
  INVOICE_Time VARCHAR2(8),
  PAYMENT_Method VARCHAR2(20),
  PAYMENT_Amount NUMBER(20,2),
  CUSTOMER_ID VARCHAR2(5),
  ORDER_ID VARCHAR2(7),
  CONSTRAINT fk_customer_invoice FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID),
  CONSTRAINT fk_order_invoice FOREIGN KEY (ORDER_ID) REFERENCES Order_(ORDER_ID)
);

INSERT INTO Invoice VALUES ('IV001',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'09:45',
'Credit/Debit Card','15.90','C006','Ord001');
INSERT INTO Invoice VALUES ('IV002',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'10:03',
'QR Payment','8.00','C007','Ord002');
INSERT INTO Invoice VALUES ('IV003',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'13:30',
'Cash','18.00','C008','Ord003');
INSERT INTO Invoice VALUES ('IV004',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'15:30',
'Cash','20.90','C009','Ord004');
INSERT INTO Invoice VALUES ('IV005',TO_DATE('01-04-2024', 'DD-MM-YYYY'),'17:03',
'Cash','18.00','C010','Ord005');

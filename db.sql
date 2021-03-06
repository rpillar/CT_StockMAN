CREATE TABLE contacts (firstname text, lastname text);
CREATE TABLE users (userName text, password text);
CREATE TABLE channel (channelName text, status text, userName text, updateDate text);
CREATE TABLE category(channel text, categoryKey text, categoryName text);
CREATE TABLE credentials (channel text, credentials text, shopId integer, shopName text, active integer);
CREATE TABLE transactionData(channel TEXT, shopName TEXT, retrievalDate TEXT, start_date TEXT,end_date TEXT,scheduleDate TEXT, scheduleTime TEXT,processed INTEGER,transactionCount INTEGER);
CREATE TABLE transactions(id INTEGER, productId INTEGER, category TEXT, date TEXT, time TEXT, quantity INTEGER, customer TEXT, channelId INTEGER, transactionType TEXT, amount INTEGER );
CREATE TABLE shops(channel TEXT, shopId INTEGER PRIMARY KEY AUTOINCREMENT, shopName TEXT, shopDescription TEXT, status TEXT, updateDate TEXT , userName text);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE categorydata(channel text, customCategoryName text, categoryName text);
CREATE TABLE transactionScheduleData(channel text, shopName text, scheduleTime text);

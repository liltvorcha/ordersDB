mysql> CREATE TABLE OrdersDATABASE (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     products VARCHAR(255) NOT NULL,
    ->     clients VARCHAR(255) NOT NULL,
    ->     orders VARCHAR(255) NOT NULL
    -> );^C
mysql> CREATE TABLE OrdersDATABASE (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     products VARCHAR(255) NOT NULL,
    ->     clients VARCHAR(255) NOT NULL,
    ->     orders VARCHAR(255) NOT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM OrderDATABASE;
+----+----------+-------------+--------+
| id | products | clients     | orders |
+----+----------+-------------+--------+
|  1 | Ноутбук  | ТАРАС ТАРАС | 05830  |
+----+----------+-------------+--------+
1 row in set (0.00 sec)

mysql> INSERT INTO OrderDATABASE (products, clients, orders) VALUES ('Кофемашина', 'ЕЛЕНА НОВИКОВА', '05830');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO OrderDATABASE (products, clients, orders) VALUES ('Фен', 'МАРИНА ШЕВЧЕНКО', '05830');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM OrderDATABASE;
+----+------------+-----------------+--------+
| id | products   | clients         | orders |
+----+------------+-----------------+--------+
|  1 | Ноутбук    | ТАРАС ТАРАС     | 05830  |
|  2 | Кофемашина | ЕЛЕНА НОВИКОВА  | 05830  |
|  3 | Фен        | МАРИНА ШЕВЧЕНКО | 05830  |
+----+------------+-----------------+--------+
3 rows in set (0.00 sec)

mysql> UPDATE OrderDATABASE
    ->     -> SET orders = 23876
    ->     -> WHERE id = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> SET orders = 23876
    -> WHERE id = 2' at line 2
mysql> UPDATE OrderDATABASE
    -> SET orders = 23876
    ->  WHERE id = 2;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE OrderDATABASE
    -> SET orders = 65231
    ->  WHERE id = 3;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM OrderDATABASE;
+----+------------+-----------------+--------+
| id | products   | clients         | orders |
+----+------------+-----------------+--------+
|  1 | Ноутбук    | ТАРАС ТАРАС     | 05830  |
|  2 | Кофемашина | ЕЛЕНА НОВИКОВА  | 23876  |
|  3 | Фен        | МАРИНА ШЕВЧЕНКО | 65231  |
+----+------------+-----------------+--------+
3 rows in set (0.00 sec)

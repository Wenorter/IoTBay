/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  luke.galic
 * Created: 26/05/2020
 */
//old
CREATE TABLE AccessLog_Table (
AccessLogID INT NOT NULL,
UserID INT NOT NULL,
LoginStart TIMESTAMP NOT NULL,
LoginEnd TIMESTAMP,
CONSTRAINT AccessLog_PK PRIMARY KEY (AccessLogID),
CONSTRAINT AccessLog_FK FOREIGN KEY (UserID) REFERENCES UnregisteredUser_Table(UserID));

//new table
CREATE TABLE AccessLog_Table (
AccessLogID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
UserID INT NOT NULL,
LoginStart TIMESTAMP NOT NULL,
LoginEnd TIMESTAMP,
CONSTRAINT AccessLog_PK PRIMARY KEY (AccessLogID),
CONSTRAINT AccessLog_FK FOREIGN KEY (UserID) REFERENCES UnregisteredUser_Table(UserID));

//new recordset
INSERT INTO AccessLog_Table (UserID, LoginStart, LoginEnd)
VALUES  (1,'2020-02-20 10:20:20','2020-02-20 10:25:20'),
        (5,'2020-02-20 10:34:25','2020-02-20 10:44:25'),
        (11,'2020-02-20 12:20:01','2020-02-20 13:20:40'),
        (41,'2020-02-20 15:45:23','2020-02-20 15:57:21'),
        (9,'2020-02-20 17:23:20','2020-02-20 19:17:28'),
        (1,'2020-03-12 12:20:10','2020-03-12 13:52:11'),
        (13,'2020-03-12 13:26:27','2020-03-12 15:26:27'),
        (16,'2020-03-12 17:20:30','2020-03-12 18:23:36'),
        (5,'2020-03-12 20:26:14','2020-03-12 21:22:13'),
        (11,'2020-03-12 21:50:23','2020-03-13 00:10:23'),
        (18,'2020-03-12 23:20:21','2020-03-13 01:00:21'),
        (1,'2020-03-25 06:31:43','2020-03-25 06:41:43'),
        (19,'2020-03-25 07:37:33','2020-03-25 07:38:38'),
        (9,'2020-03-25 08:45:43','2020-03-25 08:45:58'),
        (13,'2020-03-25 10:01:42','2020-03-25 13:01:11'),
        (5,'2020-03-27 03:01:35','2020-03-27 04:11:35'),
        (16,'2020-03-27 12:23:11','2020-03-27 13:46:11'),
        (18,'2020-03-27 20:50:49','2020-03-28 00:00:21'),
        (1,'2020-04-02 09:09:09','2020-04-02 10:31:12'),
        (9,'2020-04-02 19:29:39','2020-04-02 20:02:16');


INSERT INTO AccessLog_Table (AccessLogID, UserID, LoginStart, LoginEnd)
VALUES  (301,101,'2020-02-20 10:20:20','2020-02-20 10:25:20'),
        (302,105,'2020-02-20 10:34:25','2020-02-20 10:44:25'),
        (303,111,'2020-02-20 12:20:01','2020-02-20 13:20:40'),
        (304,141,'2020-02-20 15:45:23','2020-02-20 15:57:21'),
        (305,109,'2020-02-20 17:23:20','2020-02-20 19:17:28'),
        (306,101,'2020-03-12 12:20:10','2020-03-12 13:52:11'),
        (307,113,'2020-03-12 13:26:27','2020-03-12 15:26:27'),
        (308,116,'2020-03-12 17:20:30','2020-03-12 18:23:36'),
        (309,105,'2020-03-12 20:26:14','2020-03-12 21:22:13'),
        (310,111,'2020-03-12 21:50:23','2020-03-13 00:10:23'),
        (311,118,'2020-03-12 23:20:21','2020-03-13 01:00:21'),
        (312,101,'2020-03-25 06:31:43','2020-03-25 06:41:43'),
        (313,119,'2020-03-25 07:37:33','2020-03-25 07:38:38'),
        (314,109,'2020-03-25 08:45:43','2020-03-25 08:45:58'),
        (315,113,'2020-03-25 10:01:42','2020-03-25 13:01:11'),
        (316,105,'2020-03-27 03:01:35','2020-03-27 04:11:35'),
        (317,116,'2020-03-27 12:23:11','2020-03-27 13:46:11'),
        (318,118,'2020-03-27 20:50:49','2020-03-28 00:00:21'),
        (319,101,'2020-04-02 09:09:09','2020-04-02 10:31:12'),
        (320,109,'2020-04-02 19:29:39','2020-04-02 20:02:16');
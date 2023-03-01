/*
 Navicat Premium Data Transfer

 Source Server         : kc
 Source Server Type    : PostgreSQL
 Source Server Version : 140003
 Source Host           : localhost:5432
 Source Catalog        : db_kc
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140003
 File Encoding         : 65001

 Date: 01/03/2023 13:17:15
*/


-- ----------------------------
-- Table sequence for tbl_position
-- ----------------------------
CREATE SEQUENCE "public"."tbl_position_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

SELECT setval('"public"."tbl_position_id_seq"', 150, true);


-- ----------------------------
-- Table structure for tbl_position
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_position";
CREATE TABLE "public"."tbl_position" (
  "id" int4 NOT NULL DEFAULT nextval('tbl_position_id_seq'::regclass),
  "series_no" varchar(50) COLLATE "pg_catalog"."default",
  "company_id" int4,
  "department_id" int4,
  "name" varchar(150) COLLATE "pg_catalog"."default",
  "description" varchar(1000) COLLATE "pg_catalog"."default",
  "status" int4,
  "created_by" int4,
  "updated_by" int4,
  "deleted_by" int4,
  "imported_by" int4,
  "date_created" timestamptz(6),
  "date_updated" timestamptz(6),
  "date_deleted" timestamptz(6),
  "date_imported" timestamptz(6)
)
;

-- ----------------------------
-- Records of tbl_position
-- ----------------------------
INSERT INTO "public"."tbl_position" VALUES (1, 'PST-0000001', 1, 1, 'AUDIT HEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 15:38:28+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (3, 'PST-0000002', 1, 2, 'EXECUTIVE SECRETARY', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 15:43:50+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (4, 'PST-0000003', 1, 3, 'ADMIN HEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 15:44:34+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (5, 'PST-0000004', 1, 4, 'PRESIDENT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 15:45:40+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (6, 'PST-0000005', 1, 4, 'VICE PRESIDENT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 15:45:50+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (7, 'PST-0000006', 1, 5, 'PAYROLL SPECIALIST', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 15:46:40+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (8, 'PST-0000007', 1, 7, 'CHECKER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:05:29+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (9, 'PST-0000008', 1, 7, 'WAREHOUSE MANAGER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:05:40+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (10, 'PST-0000009', 2, 8, 'ACCOUNTING LEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:07:36+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (11, 'PST-0000010', 2, 8, 'AUDITOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:07:43+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (12, 'PST-0000011', 2, 8, 'ACCOUNTING ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:07:54+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (13, 'PST-0000012', 2, 39, 'ACCOUNTING ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:16:02+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (14, 'PST-0000013', 2, 9, 'ACCOUNTING LEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:16:56+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (15, 'PST-0000014', 2, 9, 'ADMIN ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:18:02+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (16, 'PST-0000015', 2, 9, 'ACCOUNTING ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:18:12+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (17, 'PST-0000016', 2, 10, 'FIELD ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:19:01+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (18, 'PST-0000017', 2, 10, 'GENERAL COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:19:12+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (19, 'PST-0000018', 2, 10, 'TECHNICAL AUDITOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:19:34+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (20, 'PST-0000019', 2, 11, 'ACCOUNTING LEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:21:02+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (21, 'PST-0000020', 2, 11, 'ASSISTANT LEAD - BILLING', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:21:17+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (22, 'PST-0000021', 2, 11, 'ASSOCIATE - ACCOUNTS RECEIVABLE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:21:33+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (23, 'PST-0000022', 2, 11, 'LEAD - ACCOUNTS RECEIVABLE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:21:45+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (24, 'PST-0000023', 2, 11, 'LEAD - BILLING', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:21:54+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (25, 'PST-0000024', 2, 11, 'MANAGER - BILLING & AR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:22:09+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (26, 'PST-0000025', 2, 11, 'ACCOUNTING ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:27:45+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (27, 'PST-0000026', 2, 11, 'ACCOUNTING COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:27:56+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (28, 'PST-0000027', 2, 12, 'SALES COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:29:44+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (29, 'PST-0000028', 2, 12, 'ACCOUNTING ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:29:56+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (30, 'PST-0000029', 2, 13, 'ADMIN ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:31:30+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (31, 'PST-0000030', 2, 13, 'ADMIN HEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:31:37+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (32, 'PST-0000031', 2, 13, 'CARETAKER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:31:45+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (33, 'PST-0000032', 2, 13, 'COMPANY NURSE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:31:59+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (34, 'PST-0000033', 2, 13, 'DRIVER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:32:09+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (35, 'PST-0000034', 2, 13, 'HELPER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:32:17+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (36, 'PST-0000035', 2, 13, 'UTILITY', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:32:26+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (37, 'PST-0000036', 2, 14, 'DESIGN ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:36:01+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (38, 'PST-0000037', 2, 14, 'JR DESIGN ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:36:10+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (39, 'PST-0000038', 2, 14, 'SERVICE ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:36:23+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (40, 'PST-0000039', 2, 15, 'ELECTRICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:37:12+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (41, 'PST-0000040', 2, 15, 'SITE IMPLEMENTATION ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:38:02+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (42, 'PST-0000041', 2, 16, 'CAD OPERATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:38:50+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (43, 'PST-0000042', 2, 16, 'CAD SUPERVISOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:39:00+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (44, 'PST-0000043', 2, 16, 'SR CAD OPERATOR I', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:39:15+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (45, 'PST-0000044', 2, 17, 'COSTING ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:40:14+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (46, 'PST-0000045', 2, 17, 'JR COSTING ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:40:27+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (47, 'PST-0000046', 2, 17, 'SR COSTING ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:40:36+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (48, 'PST-0000047', 2, 17, 'COSTING COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:40:46+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (49, 'PST-0000048', 2, 18, 'CADET ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:43:49+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (50, 'PST-0000049', 2, 18, 'DESIGN ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:44:01+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (51, 'PST-0000050', 2, 18, 'JR DESIGN ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:44:13+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (52, 'PST-0000051', 2, 18, 'SR DESIGN ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:44:26+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (53, 'PST-0000052', 2, 19, 'CNC PROGRAMMER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:49:04+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (54, 'PST-0000053', 2, 20, 'HR ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:55:27+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (55, 'PST-0000054', 2, 20, 'HR OFFICER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:55:35+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (56, 'PST-0000055', 2, 20, 'PAYROLL STAFF', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:55:45+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (57, 'PST-0000056', 2, 21, 'COMPANY NURSE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:57:58+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (58, 'PST-0000057', 2, 21, 'CONSULTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:58:06+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (59, 'PST-0000058', 2, 21, 'HR ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:58:18+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (60, 'PST-0000059', 2, 21, 'HR ASSOCIATE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:58:29+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (61, 'PST-0000060', 2, 21, 'HR OFFICER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:58:37+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (62, 'PST-0000061', 2, 22, 'CONSULTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:59:34+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (63, 'PST-0000062', 2, 22, 'IT PROGRAMMER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:59:44+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (64, 'PST-0000063', 2, 22, 'IT STAFF', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 16:59:51+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (65, 'PST-0000064', 2, 22, 'IT SUPERVISOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-27 17:00:02+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (66, 'PST-0000065', 2, 23, 'LOGISTICS ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:09:16+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (67, 'PST-0000066', 2, 23, 'LOGISTICS IN CHARGE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:09:28+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (68, 'PST-0000067', 2, 23, 'LOGISTICS MANAGER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:09:42+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (69, 'PST-0000068', 2, 24, 'FACTORY MANAGER', ' ', 1, 1, NULL, NULL, NULL, '2023-01-30 08:10:46+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (70, 'PST-0000069', 2, 24, 'FACTORY SUPERVISOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:11:04+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (71, 'PST-0000070', 2, 24, 'ENGINEERING SUPERVISOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:11:16+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (72, 'PST-0000071', 2, 25, 'MARKETING COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:11:57+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (73, 'PST-0000072', 2, 26, 'INTERN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:13:47+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (74, 'PST-0000073', 2, 26, 'ASSEMBLER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:14:09+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (75, 'PST-0000074', 2, 26, 'BUSBAR OPTIMIZER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:14:25+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (76, 'PST-0000075', 2, 26, 'CNC PROGRAMMER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:14:41+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (77, 'PST-0000076', 2, 26, 'DESIGN ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:14:57+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (78, 'PST-0000077', 2, 26, 'LEAD MAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:15:08+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (79, 'PST-0000078', 2, 26, 'MARKETING  COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:15:21+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (80, 'PST-0000079', 2, 26, 'PRODUCTION ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:15:36+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (81, 'PST-0000080', 2, 26, 'PRODUCTION  ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:15:52+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (82, 'PST-0000081', 2, 26, 'WIRING TECHNICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:16:06+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (83, 'PST-0000082', 2, 27, 'BUSBAR OPTIMIZER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:24:29+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (84, 'PST-0000083', 2, 27, 'BUSBAR TECHNICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:24:43+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (85, 'PST-0000084', 2, 27, 'CNC OPERATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:24:56+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (86, 'PST-0000085', 2, 27, 'PRODUCTION ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:25:28+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (87, 'PST-0000086', 2, 27, 'WIRING TECHNICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:25:40+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (88, 'PST-0000087', 2, 28, 'CNC OPERATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:40:54+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (89, 'PST-0000088', 2, 28, 'CNC PROGRAMMER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:41:04+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (90, 'PST-0000089', 2, 28, 'GRINDER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:41:36+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (92, 'PST-0000091', 2, 29, 'CNC OPERATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:45:37+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (93, 'PST-0000092', 2, 29, 'GRINDER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:45:45+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (94, 'PST-0000093', 2, 29, 'METAL CHECKER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:45:58+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (95, 'PST-0000094', 2, 29, 'WELDER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:46:07+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (96, 'PST-0000095', 2, 30, 'CHECKER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:46:51+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (97, 'PST-0000096', 2, 30, 'HELPER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:47:07+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (98, 'PST-0000097', 2, 30, 'SPRAYER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:47:17+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (99, 'PST-0000098', 2, 31, 'ENCODER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:58:15+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (100, 'PST-0000099', 2, 31, 'HELPER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:58:26+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (101, 'PST-0000100', 2, 31, 'JR QUALITY CONTROL ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:58:43+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (102, 'PST-0000101', 2, 31, 'PRODUCTION ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:58:53+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (103, 'PST-0000102', 2, 31, 'PROJECT COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:59:03+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (104, 'PST-0000103', 2, 31, 'QUALITY CONTROL ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:59:18+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (105, 'PST-0000104', 2, 31, 'QUALITY CONTROL TECHNICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:59:28+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (106, 'PST-0000105', 2, 31, 'SR QUALITY CONTROL ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:59:42+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (107, 'PST-0000106', 2, 31, 'WIRING TECHNICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 08:59:52+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (108, 'PST-0000107', 2, 31, 'METHODS ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:00:10+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (109, 'PST-0000108', 2, 32, 'IMPORTATION SPECIALIST', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:01:01+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (110, 'PST-0000109', 2, 32, 'PURCHASING ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:01:11+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (111, 'PST-0000110', 2, 32, 'PURCHASING HEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:01:22+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (112, 'PST-0000111', 2, 33, 'QUALITY MANAGEMENT OFFICE STAFF II', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:02:26+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (113, 'PST-0000112', 2, 33, 'QUALITY MANAGEMENT SUPERVISOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:02:37+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (114, 'PST-0000113', 2, 33, 'SR PROCESS ANALYST', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:02:50+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (115, 'PST-0000114', 2, 34, 'JR SALES ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:19:24+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (116, 'PST-0000115', 2, 34, 'PROJECT COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:19:37+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (117, 'PST-0000116', 2, 34, 'SALES COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:19:47+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (118, 'PST-0000117', 2, 34, 'SALES ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:19:58+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (119, 'PST-0000118', 2, 34, 'SALES MANAGER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:20:09+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (120, 'PST-0000119', 2, 34, 'SR SALES MANAGER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:20:20+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (121, 'PST-0000120', 2, 35, 'JR SALES ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:45:23+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (122, 'PST-0000121', 2, 35, 'SALES COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:45:39+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (123, 'PST-0000122', 2, 35, 'SALES ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:45:49+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (124, 'PST-0000123', 2, 35, 'SALES MANAGER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:46:00+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (125, 'PST-0000124', 2, 35, 'SALES SECRETARY', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:46:12+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (126, 'PST-0000125', 2, 35, 'SR SALES ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:46:25+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (127, 'PST-0000126', 2, 36, 'SALES COORDINATOR', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:48:01+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (128, 'PST-0000127', 2, 36, 'SALES ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:48:12+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (129, 'PST-0000128', 2, 36, 'SALES MANAGER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:48:22+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (130, 'PST-0000129', 2, 36, 'SALES REPRESENTATIVE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:48:34+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (131, 'PST-0000130', 2, 37, 'CADET ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:49:17+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (132, 'PST-0000131', 2, 37, 'ELECTRICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:49:25+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (133, 'PST-0000132', 2, 37, 'SERVICE ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:49:33+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (134, 'PST-0000133', 2, 37, 'SERVICE TECHNICIAN', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:49:45+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (135, 'PST-0000134', 2, 37, 'TECHNICAL HEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:49:56+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (136, 'PST-0000135', 2, 37, 'TECHNICAL HELPER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:50:07+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (137, 'PST-0000136', 2, 38, 'CARETAKER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:51:33+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (138, 'PST-0000137', 2, 38, 'CHECKER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:51:41+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (139, 'PST-0000138', 2, 38, 'DRIVER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:51:50+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (140, 'PST-0000139', 2, 38, 'HELPER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:52:16+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (141, 'PST-0000140', 2, 38, 'ISSUANCE STAFF', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:52:23+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (142, 'PST-0000141', 2, 38, 'MESSENGER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:52:31+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (143, 'PST-0000142', 2, 38, 'PPIC', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:52:37+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (144, 'PST-0000143', 2, 38, 'QUALITY CONTROL ENGINEER', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:52:50+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (145, 'PST-0000144', 2, 38, 'WAREHOUSE HEAD', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:52:58+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (146, 'PST-0000145', 2, 38, 'WAREHOUSE STAFF', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:53:05+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (147, 'PST-0000146', 2, 38, 'WAREHOUSE STORAGE IN CHARGE', NULL, 1, 1, NULL, NULL, NULL, '2023-01-30 09:53:19+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (148, 'PST-0000147', 1, 6, 'SALES MANAGER', NULL, 1, 1, NULL, NULL, NULL, '2023-02-02 13:44:12+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (91, 'PST-0000090', 2, 28, 'PRODUCTION ENGINEER', NULL, 1, 1, 1, NULL, NULL, '2023-01-30 08:41:48+08', '2023-02-09 14:10:40+08', NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (149, 'PST-0000148', 2, 31, 'PRODUCTION ENCODER', NULL, 1, 1, NULL, NULL, NULL, '2023-02-27 15:26:13+08', NULL, NULL, NULL);
INSERT INTO "public"."tbl_position" VALUES (150, 'PST-0000149', 2, 38, 'PPIC ASSISTANT', NULL, 1, 1, NULL, NULL, NULL, '2023-02-27 15:55:04+08', NULL, NULL, NULL);

-- ----------------------------
-- Primary Key structure for table tbl_position
-- ----------------------------
ALTER TABLE "public"."tbl_position" ADD CONSTRAINT "tbl_position_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table tbl_position
-- ----------------------------
ALTER TABLE "public"."tbl_position" ADD CONSTRAINT "tbl_position_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "public"."tbl_company" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tbl_position" ADD CONSTRAINT "tbl_position_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."tbl_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tbl_position" ADD CONSTRAINT "tbl_position_deleted_by_fkey" FOREIGN KEY ("deleted_by") REFERENCES "public"."tbl_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tbl_position" ADD CONSTRAINT "tbl_position_department_id_fkey" FOREIGN KEY ("department_id") REFERENCES "public"."tbl_department" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tbl_position" ADD CONSTRAINT "tbl_position_imported_by_fkey" FOREIGN KEY ("imported_by") REFERENCES "public"."tbl_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tbl_position" ADD CONSTRAINT "tbl_position_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "public"."tbl_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

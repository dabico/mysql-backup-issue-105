CREATE TABLE `test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int NOT NULL,
  `generated` int GENERATED ALWAYS AS (`value` + 1) STORED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `ignore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `test` (`value`) VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9);
INSERT INTO `ignore` (`value`) VALUES (10), (11), (12), (13), (14), (15), (16), (17), (18), (19);

CREATE TRIGGER `test_before_insert`
BEFORE INSERT ON `test`
FOR EACH ROW BEGIN END;

CREATE TRIGGER `test_after_insert`
AFTER INSERT ON `test`
FOR EACH ROW BEGIN END;

CREATE EVENT `event_stub`
ON SCHEDULE EVERY 1 MINUTE
DO BEGIN END;

CREATE PROCEDURE `procedure_stub`()
BEGIN END;

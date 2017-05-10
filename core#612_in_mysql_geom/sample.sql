CREATE TABLE IF NOT EXISTS `geo_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `geometry` geometry NOT NULL COMMENT 'geometry',
  PRIMARY KEY (`id`),
  SPATIAL KEY `geometry` (`geometry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `geo_table` (`geometry`) 
VALUES (
  GeomFromText('POINT(1 1)')
);

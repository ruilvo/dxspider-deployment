CREATE DATABASE IF NOT EXISTS `dxcluster`;
CREATE TABLE `dxcluster`.`spot` (

`rowid` int(11) NOT NULL AUTO_INCREMENT,
`freq` double NOT NULL,
`spotcall` varchar(14) NOT NULL,
`time` int(11) NOT NULL,
`comment` varchar(255) DEFAULT NULL,
`spotter` varchar(14) NOT NULL,
`spotdxcc` smallint(6) DEFAULT NULL,
`spotterdxcc` smallint(6) DEFAULT NULL,
`origin` varchar(14) DEFAULT NULL,
`spotitu` tinyint(4) DEFAULT NULL,
`spotcq` tinyint(4) DEFAULT NULL,
`spotteritu` tinyint(4) DEFAULT NULL,
`spottercq` tinyint(4) DEFAULT NULL,
`spotstate` char(2) DEFAULT NULL,
`spotterstate` char(2) DEFAULT NULL,
`ipaddr` varchar(40) DEFAULT NULL,
PRIMARY KEY (`rowid`),
KEY `spot_ix1` (`time`),
KEY `spot_ix2` (`spotcall`),
KEY `spiderweb_spotter` (`spotter`)
) ENGINE=InnoDB AUTO_INCREMENT=2598318 DEFAULT CHARSET=utf8mb4;

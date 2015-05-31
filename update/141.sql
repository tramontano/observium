CREATE TABLE `wifi_accesspoints` (  `wifi_accesspoint_id` int(11) NOT NULL AUTO_INCREMENT,  `device_id` int(11) NOT NULL,  `ap_number` int(11) DEFAULT NULL,  `name` varchar(45) DEFAULT NULL,  `serial` varchar(45) DEFAULT NULL,  `model` varchar(45) DEFAULT NULL,  `location` varchar(45) DEFAULT NULL,  `fingerprint` varchar(45) DEFAULT NULL,  `delete` tinyint(4) DEFAULT NULL,  PRIMARY KEY (`wifi_accesspoint_id`));
CREATE TABLE `wifi_radios` (  `wifi_radio_id` int(11) NOT NULL AUTO_INCREMENT,  `radio_number` int(11) NOT NULL,  `type` varchar(45) DEFAULT NULL,  `radio_status` varchar(45) DEFAULT NULL,  `accesspoint_id` int(11) NOT NULL,  `numasoclients` int(11) DEFAULT NULL,  `txpow` int(11) DEFAULT NULL,  `channel` int(11) DEFAULT NULL,  `mac_addr` varchar(45) DEFAULT NULL,  PRIMARY KEY (`wifi_radio_id`));
CREATE TABLE `wifi_sessions` (  `wifi_session_id` int(11) NOT NULL AUTO_INCREMENT,  `device_id` int(11) DEFAULT NULL,  `mac_addr` varchar(32) DEFAULT NULL,  `session_id` varchar(45) DEFAULT NULL,  `username` varchar(45) DEFAULT NULL,  `ipv4_addr` varchar(45) DEFAULT NULL,  `ssid` varchar(45) DEFAULT NULL,  `state` varchar(32) DEFAULT NULL,  `timestamp` timestamp NULL DEFAULT NULL,  `radio_id` int(11) DEFAULT NULL,  `uptime` int(11) DEFAULT NULL,  PRIMARY KEY (`wifi_session_id`));
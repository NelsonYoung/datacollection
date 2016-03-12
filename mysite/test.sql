CREATE TABLE `test` (
      `lid` char(100) NOT NULL,
      `logname` char(100) NOT NULL,
      `game` char(100) NOT NULL,
      `thread` char(100) NOT NULL,
      `loglevel` char(10) NOT NULL,
      `logtime` char(100) NOT NULL,
      `loginfo` longtext NOT NULL,
      PRIMARY KEY (`lid`,`logtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 

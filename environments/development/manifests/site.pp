node default {
	class {'selenium_md_oracledb':
	 	oracleBaseName    => $::oracleBaseName,
		oracleVersion     => $::oracleVersion,
		pathName          => $::pathName,
		dbname            => $::dbname,
		systempass        => $::systempass,
		sid               => $::sid,
		portdb            => $::portdb
	}
}

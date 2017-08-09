node default {
	class {'selenium_md_oracledb':
	 	oracleBaseName    => $::oraclebasename,
		oracleVersion     => $::oracleversion,
		pathName          => $::pathname,
		dbname            => $::dbname,
		portdb            => $::portdb,
		systempass        => $::systempass,
		sid               => $::sid,
		userdb            => $::userdb,
		passdb            => $::passdb
	}
}

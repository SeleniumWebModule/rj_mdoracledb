node default {
	class {'selenium_md_oracledb':
		oracleHome => "/opt/oradb/u01/app/oracle/product/11.2.0/dbhome_1",
		dbname     => "VTABOL",
		systempass => "vtax05",
	}
}

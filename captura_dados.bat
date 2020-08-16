set nome_arquivo=dump_corona_%DATE:~3,2%%DATE:~0,2%%DATE:~6,4%
c:\PostgreSQL\pg95\bin\pg_dump -U postgres -d corona > c:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\%nome_arquivo%.sql
cd C:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\
jar -cMf %nome_arquivo%.zip %nome_arquivo%.sql
del c:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\%nome_arquivo%.sql
C:\pentaho\pdi83\Kitchen.bat /file C:\pentaho\pentaho-server-ce-8.3.0.0-371\pentaho-solutions\system\CoronaVirus\endpoints\kettle\coletadados.kjb
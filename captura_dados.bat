echo GERANDO DUMP
c:\PostgreSQL\pg95\bin\pg_dump -U postgres -d corona > c:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\dump_corona.sql
echo DUMP GERADO E EXECUTANDO NOVA CAPTURA
jar -cfM c:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\dump_corona.zip c:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\dump_corona.sql
del c:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\dump_corona.sql
C:\pentaho\pdi83\Kitchen.bat /file C:\pentaho\pentaho-server-ce-8.3.0.0-371\pentaho-solutions\system\CoronaVirus\endpoints\kettle\coletadados.kjb
pause
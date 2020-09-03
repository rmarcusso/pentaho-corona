echo GERANDO DUMP
cd c:\Users\romildo.albuquerque\Documents\git\pentaho-corona\Dump\
c:\PostgreSQL\pg95\bin\pg_dump -U postgres -d corona > dump_corona.sql
echo DUMP GERADO E EXECUTANDO NOVA CAPTURA
jar -cfM dump_corona.zip dump_corona.sql
del dump_corona.sql
C:\pentaho\pdi83\Kitchen.bat /file C:\pentaho\pentaho-server-ce-8.3.0.0-371\pentaho-solutions\system\CoronaVirus\endpoints\kettle\coletadados.kjb
pause
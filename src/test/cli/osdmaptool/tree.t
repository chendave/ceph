  $ osdmaptool --createsimple 3 om
  osdmaptool: osdmap file 'om'
  osdmaptool: writing epoch 1 to om

  $ osdmaptool --tree=plain om
  osdmaptool: osdmap file 'om'
  ID WEIGHT  TYPE NAME              UP/DOWN REWEIGHT PRIMARY-AFFINITY 
  -1 3.00000 root default                                             
  -3 3.00000     rack localrack                                       
  -2 3.00000         host localhost                                   
   0 1.00000             osd.0          DNE        0                  
   1 1.00000             osd.1          DNE        0                  
   2 1.00000             osd.2          DNE        0                  

  $ osdmaptool --tree=json om
  osdmaptool: osdmap file 'om'
  {"nodes":[{"id":-1,"name":"default","type":"root","type_id":10,"children":[-3]},{"id":-3,"name":"localrack","type":"rack","type_id":3,"children":[-2]},{"id":-2,"name":"localhost","type":"host","type_id":1,"children":[2,1,0]},{"id":0,"name":"osd.0","type":"osd","type_id":0,"crush_weight":1.000000,"depth":3,"exists":0,"status":"down","reweight":0.000000,"primary_affinity":1.000000},{"id":1,"name":"osd.1","type":"osd","type_id":0,"crush_weight":1.000000,"depth":3,"exists":0,"status":"down","reweight":0.000000,"primary_affinity":1.000000},{"id":2,"name":"osd.2","type":"osd","type_id":0,"crush_weight":1.000000,"depth":3,"exists":0,"status":"down","reweight":0.000000,"primary_affinity":1.000000}],"stray":[]}
  $ rm -f om


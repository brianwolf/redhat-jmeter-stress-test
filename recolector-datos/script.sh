#!/bin/bash

i=5

# login openshift
# https://api.ocpnp.cuyorh.tcloud.ar:6443
oc login --token=$OC_TOKEN --server=$OC_SERVER


# instalacion jcmd
oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd 




# echo "Recolectado informacion de Memoria y Thread de mimo-cache-$i ..."

# PID=$(oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd | grep infinispan | awk '{print $1}';);

# mkdir mimo-cache-$i
# oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.info > mimo-cache-$i/VM.info-mimo-cache-$i.txt
# oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.native_memory baseline
# oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.native_memory detail.diff >  mimo-cache-$i/nmdetail-mimo-cache-$i.txt
# oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID GC.heap_info >  mimo-cache-$i/GV.heap_info-mimo-cache-$i.txt
# oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.native_memory >  mimo-cache-$i/VM.native_memory-mimo-cache-$i.txt
# oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.metaspace >  mimo-cache-$i/VM.metaspace-mimo-cache-$i.txt
# oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID Thread.print >  mimo-cache-$i/Thread.print-mimo-cache-$i.txt


# for i in {0..9};
#  do
#   echo "Recolectado informacion de Memoria y Thread de mimo-cache-$i ..."
#   PID=$(oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd | grep infinispan| awk '{print $1}';);
#   mkdir mimo-cache-$i
#   oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.info > mimo-cache-$i/VM.info-mimo-cache-$i.txt
#   oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.native_memory baseline
#   oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.native_memory detail.diff >  mimo-cache-$i/nmdetail-mimo-cache-$i.txt
#   oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID GC.heap_info >  mimo-cache-$i/GV.heap_info-mimo-cache-$i.txt
#   oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.native_memory >  mimo-cache-$i/VM.native_memory-mimo-cache-$i.txt
#   oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID VM.metaspace >  mimo-cache-$i/VM.metaspace-mimo-cache-$i.txt
#   oc exec mimo-cache-$i -- /opt/infinispan/server/data/diag/bin/jcmd $PID Thread.print >  mimo-cache-$i/Thread.print-mimo-cache-$i.txt

#  echo "Recolectado  GC logs de mimo-cache-$i ..."
#  oc cp mimo-cache-$i:/tmp/gc.log mimo-cache-$i/gc.log

# done
# echo "Recolectado informacion de inspect"
#  oc adm inspect ns/movistar-data-grid

# echo "Recolectado informacion CR Infinispan"
# oc get infinispan mimo-cache -o yaml >mimo-cache.yaml

# echo "Comprimiendo"
# tar -cvf heap.tar mimo-cache-*
# tar -cvf inspect.tar inspect*

# rm -r mimo-cache-*
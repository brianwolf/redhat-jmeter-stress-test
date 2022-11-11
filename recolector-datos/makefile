PODNAME=mimo-int-cache-5
JCMD_PATH=/opt/infinispan/diag/bin/
RESULT_PATH=/opt/infinispan/server/data/
HOST_PATH=/home/blobo/Descargas/
FILE=mimo-int-cache-5.tar

ls:
	oc exec $(PODNAME) -- ls $(RESULT_PATH)


descargar d:
	oc rsync $(PODNAME):$(RESULT_PATH)$(FILE) $(HOST_PATH)


rm:
	oc exec $(PODNAME) -- rm -fr $(RESULT_PATH)$(FILE)


jcmd:
	oc exec $(PODNAME) -- mkdir -p $(JCMD_PATH)
	oc cp jdk_11_16/jcmd  $(PODNAME):$(JCMD_PATH)
	oc exec $(PODNAME) -- $(JCMD_PATH)jcmd --help
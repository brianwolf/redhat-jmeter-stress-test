PODNAME=mimo-int-cache-5
RESULT_PATH=/opt/infinispan/diag/bin/
HOST_PATH=/home/blobo/Descargas/
FILE=mimo-int-cache-5.tar

ls:
	oc exec $(PODNAME) -- ls $(RESULT_PATH)


descargar d:
	oc rsync $(PODNAME):$(RESULT_PATH)$(FILE) $(HOST_PATH)


rm:
	oc exec $(PODNAME) -- rm -fr $(RESULT_PATH)$(FILE)


jcmd:
	oc exec $(PODNAME) -- mkdir -p $(RESULT_PATH)
	oc cp jdk_11_16/jcmd  $(PODNAME):$(RESULT_PATH)
	oc exec $(PODNAME) -- $(RESULT_PATH)jcmd --help
PROJECT_ID=development-221303
COMPUTE_ZONE=us-west1-a
CLUSTER_NAME=cluster-1
MACHINE_TYPE=g1-small

.PHONY: all
all:

.PHONY: cluster
cluster:
	gcloud config set project $(PROJECT_ID)
	gcloud config set compute/zone $(COMPUTE_ZONE)
	gcloud container clusters create $(CLUSTER_NAME) -m $(MACHINE_TYPE)

.PHONY: clean
clean:


PARISH_DATASET=$(DATASET_DIR)parish.csv
PARISH_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)parish/05280773e379a6f1ae29013de610201561de289423a476497069dc1b1297520f.csv\
    $(TRANSFORMED_DIR)parish/abba36cb6dc0396e50358a9461382dd5756e79871284d1cc2a959ecdb1ba0a69.csv\
    $(TRANSFORMED_DIR)parish/e5b1e8e7e9652aa8d667614c3e6c976459b45f878ceb29f636ee25c7680f85cc.csv

$(TRANSFORMED_DIR)parish/05280773e379a6f1ae29013de610201561de289423a476497069dc1b1297520f.csv: collection/resource/05280773e379a6f1ae29013de610201561de289423a476497069dc1b1297520f
	$(run-pipeline)

$(TRANSFORMED_DIR)parish/abba36cb6dc0396e50358a9461382dd5756e79871284d1cc2a959ecdb1ba0a69.csv: collection/resource/abba36cb6dc0396e50358a9461382dd5756e79871284d1cc2a959ecdb1ba0a69
	$(run-pipeline)

$(TRANSFORMED_DIR)parish/e5b1e8e7e9652aa8d667614c3e6c976459b45f878ceb29f636ee25c7680f85cc.csv: collection/resource/e5b1e8e7e9652aa8d667614c3e6c976459b45f878ceb29f636ee25c7680f85cc
	$(run-pipeline)

$(PARISH_DATASET): $(PARISH_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(PARISH_TRANSFORMED_FILES)

dataset:: $(PARISH_DATASET)

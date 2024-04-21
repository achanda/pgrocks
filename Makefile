MODULE_big = pgtam
EXTENSION = pgtam
DATA = pgtam--0.0.1.sql

PG_CPPFLAGS += -L/usr/local/lib -g
SHLIB_LINK += -L/usr/local/lib -lrocksdb

# OBJS = pgtam.o

PG_CONFIG = /usr/local/pgsql/bin/pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

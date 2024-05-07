MODULE_big = pgrocks
EXTENSION = pgrocks
DATA = pgrocks--0.0.1.sql

ROCKSDB_PREFIX=/Users/Abhishek/src/rocksdb

PG_CFLAGS += -I${ROCKSDB_PREFIX}/include
SHLIB_LINK += -L${ROCKSDB_PREFIX} -lrocksdb -Wl

OBJS = pgrocks.o

PG_CONFIG = /usr/local/pgsql/bin/pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

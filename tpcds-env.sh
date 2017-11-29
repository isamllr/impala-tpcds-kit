# path to the tpcds-kit directory
export TPCDS_ROOT=$HOME/tpcds-kit

# top level directory for flat files in HDFS
#export FLATFILE_HDFS_ROOT=/user/${USER}/tpcds
#Adjust to use Azure Data Lake
export FLATFILE_HDFS_ROOT=adl://clouderaoncentos.azuredatalakestore.net/${USER}/tpcds

# scale factor in GB
# SF 3000 yields ~1TB for the store_sales table
export TPCDS_SCALE_FACTOR=3000

# this is used to determine the number of dsdgen processes to generate data
# usually set to one per physical CPU core
# example - 20 nodes @ 12 threads each
export DSDGEN_NODES=18
# For DS15v2 with 20 cores: Use 19 threads, one left for machine
export DSDGEN_THREADS_PER_NODE=19 
export DSDGEN_TOTAL_THREADS=$((DSDGEN_NODES * DSDGEN_THREADS_PER_NODE))

# the name for the tpcds database
export TPCDS_DBNAME=tpcds_parquet

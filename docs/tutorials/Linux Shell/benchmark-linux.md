# Sysbench tool for benchmarking 

## Install 
On Debian/Ubuntu, sysbench can be installed as follows:
>
    sudo apt-get install sysbench
    man sysbench # check cli options 

## CPU Benchmark
You can benchmark your CPU performance as follows:

>
    sysbench --test=cpu --cpu-max-prime=20000 run

Sample output: 
> 
    sysbench 0.4.12:  multi-threaded system evaluation benchmark

    Running the test with following options:
    Number of threads: 1

    Doing CPU performance benchmark

    Threads started!
    Done.

    Maximum prime number checked in CPU test: 20000


    Test execution summary:
        total time:                          29.4001s
        total number of events:              10000
        total time taken by event execution: 29.3989
        per-request statistics:
            min:                                  2.93ms
            avg:                                  2.94ms
            max:                                  3.13ms
            approx.  95 percentile:               2.94ms

    Threads fairness:
        events (avg/stddev):           10000.0000/0.00
        execution time (avg/stddev):   29.3989/0.00

The most important line to note is `total time: 23.8724s`


## Memory Benchmark 
When using the memory workload, sysbench will allocate a buffer (provided through the --memory-block-size parameter, defaults to 1kbyte) and each execution will read or write to this memory (--memory-oper, defaults to write) in a random or sequential manner (--memory-access-mode, defaults to sequential).

>
    sysbench --test=memory --memory-block-size=1M --memory-total-size=10G run

Sample Output 
> 
    sysbench 0.4.12:  multi-threaded system evaluation benchmark

    Running the test with following options:
    Number of threads: 1

    Doing memory operations speed test
    Memory block size: 1024K

    Memory transfer size: 10240M

    Memory operations type: write
    Memory scope type: global
    Threads started!
    Done.

    Operations performed: 10240 ( 6906.34 ops/sec)

    10240.00 MB transferred (6906.34 MB/sec)


    Test execution summary:
        total time:                          1.4827s
        total number of events:              10240
        total time taken by event execution: 1.4811
        per-request statistics:
            min:                                  0.14ms
            avg:                                  0.14ms
            max:                                  0.29ms
            approx.  95 percentile:               0.15ms

    Threads fairness:
        events (avg/stddev):           10240.0000/0.00
        execution time (avg/stddev):   1.4811/0.00


Important line to note is the throughput: 

``Operations performed: 10240 ( 6906.34 ops/sec) | 10240.00 MB transferred (6906.34 MB/sec)``

As a derivative you can use a variety of block sizes to test read and write: 
>
    sysbench --test=memory --memory-block-size=1K --memory-scope=global --memory-total-size=100G --memory-oper=read run
    sysbench --test=memory --memory-block-size=1K --memory-scope=global --memory-total-size=100G --memory-oper=write run

## File I/O tests: 

> 
    # prepare file on disk 
    sysbench --test=fileio --file-total-size=150G prepare

    # test rw with sysbench
    sysbench --test=fileio --file-total-size=150G --file-test-mode=rndrw --init-rng=on --max-time=300 --max-requests=0 run
    
    # dont forget to cleanup after 
    sysbench --test=fileio --file-total-size=150G cleanup

Output: 
> 
    towshif@TSERV:~$ sysbench --test=fileio --file-total-size=4G --file-test-mode=rndrw --max-time=300 --max-requests=0 --file-extra-flags=direct run
    sysbench 0.4.12:  multi-threaded system evaluation benchmark

    Running the test with following options:
    Number of threads: 1

    Extra file open flags: 16384
    128 files, 32Mb each
    4Gb total file size
    Block size 16Kb
    Number of random requests for random IO: 0
    Read/Write ratio for combined random IO test: 1.50
    Periodic FSYNC enabled, calling fsync() each 100 requests.
    Calling fsync() at the end of test, Enabled.
    Using synchronous I/O mode
    Doing random r/w test
    Threads started!
    Time limit exceeded, exiting...
    Done.

    Operations performed:  34204 Read, 22802 Write, 72960 Other = 129966 Total
    Read 534.44Mb  Written 356.28Mb  Total transferred 890.72Mb  (2.969Mb/sec)
    190.02 Requests/sec executed

    Test execution summary:
        total time:                          300.0058s
        total number of events:              57006
        total time taken by event execution: 197.1079
        per-request statistics:
            min:                                  0.17ms
            avg:                                  3.46ms
            max:                                154.32ms
            approx.  95 percentile:               8.15ms

    Threads fairness:
        events (avg/stddev):           57006.0000/0.00
        execution time (avg/stddev):   197.1079/0.00

Benchmark metric: 

`Read 534.44Mb  Written 356.28Mb  Total transferred 890.72Mb  (2.969Mb/sec) | 190.02 Requests/sec executed`

# Shell Script to perform full `sysbench` tests 
>
    # Ref: http://wiki.mikejung.biz/Sysbench
    # CPU
    sysbench --test=cpu --cpu-max-prime=20000 run
    sysbench --test=cpu --cpu-max-prime=20000 run --num-threads=4

    #FILE IO
    sysbench --test=fileio --file-total-size=4G prepare
    sysbench --test=fileio --file-total-size=4G --file-test-mode=rndrw --max-time=300 --max-requests=0 --file-extra-flags=direct run
    sysbench --test=fileio --file-total-size=4G cleanup

    #MEMROY
    sysbench --test=memory --memory-block-size=1K --memory-scope=global --memory-total-size=100G --memory-oper=read run
    sysbench --test=memory --memory-block-size=1K --memory-scope=global --memory-total-size=100G --memory-oper=write run


#### References: 
* https://www.howtoforge.com/how-to-benchmark-your-system-cpu-file-io-mysql-with-sysbench
* https://wiki.mikejung.biz/Sysbench 
* https://gist.github.com/hassansin/419e74eae0923d42e0c3
* http://blog.siphos.be/2013/04/comparing-performance-with-sysbench-part-2/
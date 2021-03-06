QMGR=$1
runmqsc $QMGR <<STREAM
def qlocal(EAMSR.REQUEST.FROM.INSERVICE) DESCR('Drop the eamsr message from Inservices to Maximo')  MAXDEPTH(10000) DEFPSIST(YES) REPLACE
def qlocal(EAMSR.REQUEST.FROM.INSERVICE.BACKOUT) DESCR('Drop the eamsr message from Inservices to Maximo') MAXDEPTH(10000) DEFPSIST(YES) REPLACE
def qlocal(EAMSR.SERVICEORDER.LOGGING) DESCR('Logging queue') MAXDEPTH(10000) DEFPSIST(YES) REPLACE
def qlocal(OPI_INS_ADD_COMMENTS) DESCR('Inservice ServiceOrder updates queue') MAXDEPTH(10000) DEFPSIST(YES) REPLACE
def qlocal(EAMSR.REQUEST.RETRY) DESCR('Retry queue') MAXDEPTH(10000) DEFPSIST(YES) REPLACE
def qlocal(EAMSR.REQUEST.LOGGING) DESCR('Logging queue') MAXDEPTH(10000) DEFPSIST(YES) REPLACE
end
STREAM

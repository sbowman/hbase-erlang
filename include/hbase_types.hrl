-ifndef(_hbase_types_included).
-define(_hbase_types_included, yeah).

%% struct tCell

-record(tCell, {value = undefined :: string(), 
                timestamp = undefined :: integer()}).

%% struct columnDescriptor

-record(columnDescriptor, {name = undefined :: string(), 
                           maxVersions = 3 :: integer(), 
                           compression = "NONE" :: string(), 
                           inMemory = false :: boolean(), 
                           bloomFilterType = "NONE" :: string(), 
                           bloomFilterVectorSize = 0 :: integer(), 
                           bloomFilterNbHashes = 0 :: integer(), 
                           blockCacheEnabled = false :: boolean(), 
                           timeToLive = -1 :: integer()}).

%% struct tRegionInfo

-record(tRegionInfo, {startKey = undefined :: string(), 
                      endKey = undefined :: string(), 
                      id = undefined :: integer(), 
                      name = undefined :: string(), 
                      version = undefined :: integer(), 
                      serverName = undefined :: string(), 
                      port = undefined :: integer()}).

%% struct mutation

-record(mutation, {isDelete = false :: boolean(), 
                   column = undefined :: string(), 
                   value = undefined :: string()}).

%% struct batchMutation

-record(batchMutation, {row = undefined :: string(), 
                        mutations = [] :: list()}).

%% struct tRowResult

-record(tRowResult, {row = undefined :: string(), 
                     columns = dict:new() :: dict()}).

%% struct tScan

-record(tScan, {startRow = undefined :: string(), 
                stopRow = undefined :: string(), 
                timestamp = undefined :: integer(), 
                columns = [] :: list(), 
                caching = undefined :: integer(), 
                filterString = undefined :: string()}).

%% struct iOError

-record(iOError, {message = undefined :: string()}).

%% struct illegalArgument

-record(illegalArgument, {message = undefined :: string()}).

%% struct alreadyExists

-record(alreadyExists, {message = undefined :: string()}).

-endif.

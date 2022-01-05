SELECT
    CASE
        WHEN AL010_messageId IS not NULL THEN '1A'
        WHEN AL011_messageId IS not NULL THEN '1B'
        WHEN AL012_messageId IS not NULL THEN '1C'
        WHEN AL013_messageId IS not NULL THEN '1D'
        WHEN AL009_messageId IS not NULL THEN '2A'
        WHEN AL006_messageId IS not NULL THEN '2B'
        WHEN AL007_messageId IS not NULL THEN '2C'
        WHEN AL015_messageId IS not NULL THEN '2D'
        WHEN AM001_messageId IS not NULL THEN '1A'
        WHEN AM002_messageId IS not NULL THEN '1A'
        WHEN AM003_messageId IS not NULL THEN '1B'
        WHEN AM004_messageId IS not NULL THEN '1B'
        WHEN AM005_messageId IS not NULL THEN '1C'
        WHEN AM006_messageId IS not NULL THEN '1C'
        WHEN AM007_messageId IS not NULL THEN '1D'
        WHEN AM008_messageId IS not NULL THEN '1D'
        WHEN AM009_messageId IS not NULL THEN '2A'
        WHEN AM010_messageId IS not NULL THEN '2A'
        WHEN AM011_messageId IS not NULL THEN '2B'
        WHEN AM012_messageId IS not NULL THEN '2B'
        WHEN AM013_messageId IS not NULL THEN '2C'
        WHEN AM014_messageId IS not NULL THEN '2C'
        WHEN AM015_messageId IS not NULL THEN '2D'
        WHEN AM016_messageId IS not NULL THEN '2D'
        ELSE NULL
    END as room,
    CASE
        WHEN AL010_messageId IS not NULL THEN 'ceiling'
        WHEN AL011_messageId IS not NULL THEN 'ceiling'
        WHEN AL012_messageId IS not NULL THEN 'ceiling'
        WHEN AL013_messageId IS not NULL THEN 'ceiling'
        WHEN AL009_messageId IS not NULL THEN 'ceiling'
        WHEN AL006_messageId IS not NULL THEN 'ceiling'
        WHEN AL007_messageId IS not NULL THEN 'ceiling'
        WHEN AL015_messageId IS not NULL THEN 'ceiling'
        WHEN AM001_messageId IS not NULL THEN 'kitchen'
        WHEN AM002_messageId IS not NULL THEN 'toilet'
        WHEN AM003_messageId IS not NULL THEN 'kitchen'
        WHEN AM004_messageId IS not NULL THEN 'toilet'
        WHEN AM005_messageId IS not NULL THEN 'kitchen'
        WHEN AM006_messageId IS not NULL THEN 'toilet'
        WHEN AM007_messageId IS not NULL THEN 'kitchen'
        WHEN AM008_messageId IS not NULL THEN 'toilet'
        WHEN AM009_messageId IS not NULL THEN 'kitchen'
        WHEN AM010_messageId IS not NULL THEN 'toilet'
        WHEN AM011_messageId IS not NULL THEN 'kitchen'
        WHEN AM012_messageId IS not NULL THEN 'toilet'
        WHEN AM013_messageId IS not NULL THEN 'kitchen'
        WHEN AM014_messageId IS not NULL THEN 'toilet'
        WHEN AM015_messageId IS not NULL THEN 'kitchen'
        WHEN AM016_messageId IS not NULL THEN 'toilet'
        ELSE NULL
    END as type,
    CASE
        WHEN AL010_messageId IS not NULL THEN 'AL010'
        WHEN AL011_messageId IS not NULL THEN 'AL011'
        WHEN AL012_messageId IS not NULL THEN 'AL012'
        WHEN AL013_messageId IS not NULL THEN 'AL013'
        WHEN AL009_messageId IS not NULL THEN 'AL009'
        WHEN AL006_messageId IS not NULL THEN 'AL006'
        WHEN AL007_messageId IS not NULL THEN 'AL007'
        WHEN AL015_messageId IS not NULL THEN 'AL015'
        WHEN AM001_messageId IS not NULL THEN 'AM001'
        WHEN AM002_messageId IS not NULL THEN 'AM002'
        WHEN AM003_messageId IS not NULL THEN 'AM003'
        WHEN AM004_messageId IS not NULL THEN 'AM004'
        WHEN AM005_messageId IS not NULL THEN 'AM005'
        WHEN AM006_messageId IS not NULL THEN 'AM006'
        WHEN AM007_messageId IS not NULL THEN 'AM007'
        WHEN AM008_messageId IS not NULL THEN 'AM008'
        WHEN AM009_messageId IS not NULL THEN 'AM009'
        WHEN AM010_messageId IS not NULL THEN 'AM010'
        WHEN AM011_messageId IS not NULL THEN 'AM011'
        WHEN AM012_messageId IS not NULL THEN 'AM012'
        WHEN AM013_messageId IS not NULL THEN 'AM013'
        WHEN AM014_messageId IS not NULL THEN 'AM014'
        WHEN AM015_messageId IS not NULL THEN 'AM015'
        WHEN AM016_messageId IS not NULL THEN 'AM016'
        ELSE NULL
    END as deviceId,
    CASE
        WHEN AL010_messageId IS not NULL THEN AL010_messageId
        WHEN AL011_messageId IS not NULL THEN AL011_messageId
        WHEN AL012_messageId IS not NULL THEN AL012_messageId
        WHEN AL013_messageId IS not NULL THEN AL013_messageId
        WHEN AL009_messageId IS not NULL THEN AL009_messageId
        WHEN AL006_messageId IS not NULL THEN AL006_messageId
        WHEN AL007_messageId IS not NULL THEN AL007_messageId
        WHEN AL015_messageId IS not NULL THEN AL015_messageId
        WHEN AM001_messageId IS not NULL THEN AM001_messageId
        WHEN AM002_messageId IS not NULL THEN AM002_messageId
        WHEN AM003_messageId IS not NULL THEN AM003_messageId
        WHEN AM004_messageId IS not NULL THEN AM004_messageId
        WHEN AM005_messageId IS not NULL THEN AM005_messageId
        WHEN AM006_messageId IS not NULL THEN AM006_messageId
        WHEN AM007_messageId IS not NULL THEN AM007_messageId
        WHEN AM008_messageId IS not NULL THEN AM008_messageId
        WHEN AM009_messageId IS not NULL THEN AM009_messageId
        WHEN AM010_messageId IS not NULL THEN AM010_messageId
        WHEN AM011_messageId IS not NULL THEN AM011_messageId
        WHEN AM012_messageId IS not NULL THEN AM012_messageId
        WHEN AM013_messageId IS not NULL THEN AM013_messageId
        WHEN AM014_messageId IS not NULL THEN AM014_messageId
        WHEN AM015_messageId IS not NULL THEN AM015_messageId
        WHEN AM016_messageId IS not NULL THEN AM016_messageId
        ELSE NULL
    END as messageId,
    CASE
        WHEN AL010_vibration IS not NULL THEN AL010_vibration
        WHEN AL011_vibration IS not NULL THEN AL011_vibration
        WHEN AL012_vibration IS not NULL THEN AL012_vibration
        WHEN AL013_vibration IS not NULL THEN AL013_vibration
        WHEN AL009_vibration IS not NULL THEN AL009_vibration
        WHEN AL006_vibration IS not NULL THEN AL006_vibration
        WHEN AL007_vibration IS not NULL THEN AL007_vibration
        WHEN AL015_vibration IS not NULL THEN AL015_vibration
        WHEN AM001_vibration IS not NULL THEN AM001_vibration
        WHEN AM002_vibration IS not NULL THEN AM002_vibration
        WHEN AM003_vibration IS not NULL THEN AM003_vibration
        WHEN AM004_vibration IS not NULL THEN AM004_vibration
        WHEN AM005_vibration IS not NULL THEN AM005_vibration
        WHEN AM006_vibration IS not NULL THEN AM006_vibration
        WHEN AM007_vibration IS not NULL THEN AM007_vibration
        WHEN AM008_vibration IS not NULL THEN AM008_vibration
        WHEN AM009_vibration IS not NULL THEN AM009_vibration
        WHEN AM010_vibration IS not NULL THEN AM010_vibration
        WHEN AM011_vibration IS not NULL THEN AM011_vibration
        WHEN AM012_vibration IS not NULL THEN AM012_vibration
        WHEN AM013_vibration IS not NULL THEN AM013_vibration
        WHEN AM014_vibration IS not NULL THEN AM014_vibration
        WHEN AM015_vibration IS not NULL THEN AM015_vibration
        WHEN AM016_vibration IS not NULL THEN AM016_vibration
        ELSE NULL
    END as vibration,
    CASE
        WHEN AL010_heartbeat IS not NULL THEN AL010_heartbeat
        WHEN AL011_heartbeat IS not NULL THEN AL011_heartbeat
        WHEN AL012_heartbeat IS not NULL THEN AL012_heartbeat
        WHEN AL013_heartbeat IS not NULL THEN AL013_heartbeat
        WHEN AL009_heartbeat IS not NULL THEN AL009_heartbeat
        WHEN AL006_heartbeat IS not NULL THEN AL006_heartbeat
        WHEN AL007_heartbeat IS not NULL THEN AL007_heartbeat
        WHEN AL015_heartbeat IS not NULL THEN AL015_heartbeat
        WHEN AM001_heartbeat IS not NULL THEN AM001_heartbeat
        WHEN AM002_heartbeat IS not NULL THEN AM002_heartbeat
        WHEN AM003_heartbeat IS not NULL THEN AM003_heartbeat
        WHEN AM004_heartbeat IS not NULL THEN AM004_heartbeat
        WHEN AM005_heartbeat IS not NULL THEN AM005_heartbeat
        WHEN AM006_heartbeat IS not NULL THEN AM006_heartbeat
        WHEN AM007_heartbeat IS not NULL THEN AM007_heartbeat
        WHEN AM008_heartbeat IS not NULL THEN AM008_heartbeat
        WHEN AM009_heartbeat IS not NULL THEN AM009_heartbeat
        WHEN AM010_heartbeat IS not NULL THEN AM010_heartbeat
        WHEN AM011_heartbeat IS not NULL THEN AM011_heartbeat
        WHEN AM012_heartbeat IS not NULL THEN AM012_heartbeat
        WHEN AM013_heartbeat IS not NULL THEN AM013_heartbeat
        WHEN AM014_heartbeat IS not NULL THEN AM014_heartbeat
        WHEN AM015_heartbeat IS not NULL THEN AM015_heartbeat
        WHEN AM016_heartbeat IS not NULL THEN AM016_heartbeat
        ELSE NULL
    END as heartbeat,
    CASE
        WHEN AL010_lightOnSignal IS not NULL THEN AL010_lightOnSignal
        WHEN AL011_lightOnSignal IS not NULL THEN AL011_lightOnSignal
        WHEN AL012_lightOnSignal IS not NULL THEN AL012_lightOnSignal
        WHEN AL013_lightOnSignal IS not NULL THEN AL013_lightOnSignal
        WHEN AL009_lightOnSignal IS not NULL THEN AL009_lightOnSignal
        WHEN AL006_lightOnSignal IS not NULL THEN AL006_lightOnSignal
        WHEN AL007_lightOnSignal IS not NULL THEN AL007_lightOnSignal
        WHEN AL015_lightOnSignal IS not NULL THEN AL015_lightOnSignal
        WHEN AM001_lightOnSignal IS not NULL THEN AM001_lightOnSignal
        WHEN AM002_lightOnSignal IS not NULL THEN AM002_lightOnSignal
        WHEN AM003_lightOnSignal IS not NULL THEN AM003_lightOnSignal
        WHEN AM004_lightOnSignal IS not NULL THEN AM004_lightOnSignal
        WHEN AM005_lightOnSignal IS not NULL THEN AM005_lightOnSignal
        WHEN AM006_lightOnSignal IS not NULL THEN AM006_lightOnSignal
        WHEN AM007_lightOnSignal IS not NULL THEN AM007_lightOnSignal
        WHEN AM008_lightOnSignal IS not NULL THEN AM008_lightOnSignal
        WHEN AM009_lightOnSignal IS not NULL THEN AM009_lightOnSignal
        WHEN AM010_lightOnSignal IS not NULL THEN AM010_lightOnSignal
        WHEN AM011_lightOnSignal IS not NULL THEN AM011_lightOnSignal
        WHEN AM012_lightOnSignal IS not NULL THEN AM012_lightOnSignal
        WHEN AM013_lightOnSignal IS not NULL THEN AM013_lightOnSignal
        WHEN AM014_lightOnSignal IS not NULL THEN AM014_lightOnSignal
        WHEN AM015_lightOnSignal IS not NULL THEN AM015_lightOnSignal
        WHEN AM016_lightOnSignal IS not NULL THEN AM016_lightOnSignal
        ELSE NULL
    END as lightOnSignal,
    CASE
        WHEN AL010_sequence IS not NULL THEN AL010_sequence
        WHEN AL011_sequence IS not NULL THEN AL011_sequence
        WHEN AL012_sequence IS not NULL THEN AL012_sequence
        WHEN AL013_sequence IS not NULL THEN AL013_sequence
        WHEN AL009_sequence IS not NULL THEN AL009_sequence
        WHEN AL006_sequence IS not NULL THEN AL006_sequence
        WHEN AL007_sequence IS not NULL THEN AL007_sequence
        WHEN AL015_sequence IS not NULL THEN AL015_sequence
        WHEN AM001_sequence IS not NULL THEN AM001_sequence
        WHEN AM002_sequence IS not NULL THEN AM002_sequence
        WHEN AM003_sequence IS not NULL THEN AM003_sequence
        WHEN AM004_sequence IS not NULL THEN AM004_sequence
        WHEN AM005_sequence IS not NULL THEN AM005_sequence
        WHEN AM006_sequence IS not NULL THEN AM006_sequence
        WHEN AM007_sequence IS not NULL THEN AM007_sequence
        WHEN AM008_sequence IS not NULL THEN AM008_sequence
        WHEN AM009_sequence IS not NULL THEN AM009_sequence
        WHEN AM010_sequence IS not NULL THEN AM010_sequence
        WHEN AM011_sequence IS not NULL THEN AM011_sequence
        WHEN AM012_sequence IS not NULL THEN AM012_sequence
        WHEN AM013_sequence IS not NULL THEN AM013_sequence
        WHEN AM014_sequence IS not NULL THEN AM014_sequence
        WHEN AM015_sequence IS not NULL THEN AM015_sequence
        WHEN AM016_sequence IS not NULL THEN AM016_sequence
        ELSE NULL
    END as sequence,
    EventProcessedUtcTime,
    PartitionId,
    EventEnqueuedUtcTime
    
INTO
    mstsqldb
FROM
    [iothubeventhub]
WHERE [Ceiling-Light-1D_messageId] IS null
AND [WaterT-2B_messageId] IS null


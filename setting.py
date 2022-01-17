room_number = [
    "1A",
    "1B",
    "1C",
    "1D",
    "2A",
    "2B",
    "2C",
    "2D",
]
device_type = [
    "toilet",
    "kitchen",
]

iot_devices = {
    "AM001":["1A",device_type[1]],
    "AM002":["1A",device_type[0]],
    "AM003":["1B",device_type[1]],
    "AM004":["1B",device_type[0]],
    "AM005":["1C",device_type[1]],
    "AM006":["1C",device_type[0]],
    "AM007":["1D",device_type[1]],
    "AM008":["1D",device_type[0]],
    "AM009":["2A",device_type[1]],
    "AM010":["2A",device_type[0]],
    "AM011":["2B",device_type[1]],
    "AM012":["2B",device_type[0]],
    "AM013":["2C",device_type[1]],
    "AM014":["2C",device_type[0]],
    "AM015":["2D",device_type[1]],
    "AM016":["2D",device_type[0]],
}

datas = {i:{d:"" for d in device_type} for i in room_number}

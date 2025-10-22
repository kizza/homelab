"""Custom quirk for GiEX GX-04 soil moisture + temperature sensor."""

from zhaquirks.tuya.builder import TuyaQuirkBuilder

(
    TuyaQuirkBuilder("_TZE284_nhgdf6qr", "TS0601")  # Giex GX04
    .tuya_temperature(dp_id=5, scale=10)
    .tuya_battery(dp_id=15)
    .tuya_soil_moisture(dp_id=3)
    .skip_configuration()
    .add_to_registry()
)

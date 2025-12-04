(script startup attestation
    (sleep_until (> (device_get_position power_control) 0))
    (device_group_set_immediate tombs_power 1)
    (sleep_until (and (> (device_get_position tomb1) 0) (> (device_get_position tomb2) 0)))
    (device_group_set_immediate gen_door_power 1)
)

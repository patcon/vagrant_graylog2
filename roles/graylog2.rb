name "graylog2"
description "This role describes a complete graylog2 server."
run_list(
    "recipe[apt]",
    "recipe[build-essential]",
    "recipe[java]",
    "recipe[runit]",
    "recipe[bluepill]",
    "recipe[nginx::source]",
    "recipe[passenger_nginx]",
    "recipe[elasticsearch::stand-alone]",
    "recipe[mongodb::stand-alone]",
    "recipe[graylog2::server]",
    "recipe[graylog2::web_interface]"
)

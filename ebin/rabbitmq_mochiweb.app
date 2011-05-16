{application, rabbitmq_mochiweb,
 [{description, "RabbitMQ Mochiweb Embedding"},
  {vsn, "%%VSN%%"},
  {modules, [
    rabbit_mochiweb,
    rabbit_mochiweb_app,
    rabbit_mochiweb_sup,
    rabbit_mochiweb_web,
    rabbit_mochiweb_registry,
    rabbit_webmachine
  ]},
  {registered, []},
  {mod, {rabbit_mochiweb_app, []}},
  {env, [
         {listeners, [{'*', [{port, 55670}]},
                      {mgmt, [{port, 55672}]}]},
         {contexts, [{rabbit_mgmt, mgmt},
                     {rabbit_mgmt_api, mgmt},
                     {rabbit_mgmt_cli, mgmt}]}
        ]},
  {applications, [kernel, stdlib]}]}.
-module({{name}}).

-include_lib("vernemq_dev/include/vernemq_dev.hrl").

{{^no_mqtt_three}}
-behaviour(auth_on_register_hook).
-behaviour(auth_on_publish_hook).
-behaviour(auth_on_subscribe_hook).
-behaviour(on_register_hook).
-behaviour(on_publish_hook).
-behaviour(on_subscribe_hook).
-behaviour(on_unsubscribe_hook).
-behaviour(on_deliver_hook).
-behaviour(on_offline_message_hook).
-behaviour(on_client_wakeup_hook).
-behaviour(on_client_offline_hook).
-behaviour(on_client_gone_hook).
{{/no_mqtt_three}}
{{^no_mqtt_five}}
-behaviour(auth_on_register_m5_hook).
-behaviour(on_register_m5_hook).
-behaviour(auth_on_publish_m5_hook).
-behaviour(on_publish_m5_hook).
-behaviour(auth_on_subscribe_m5_hook).
-behaviour(on_subscribe_m5_hook).
-behaviour(on_auth_m5_hook).
{{/no_mqtt_five}}

{{^no_mqtt_three}}
-export([auth_on_register/5,
         auth_on_publish/6,
         auth_on_subscribe/3,
         on_register/3,
         on_publish/6,
         on_subscribe/3,
         on_unsubscribe/3,
         on_deliver/4,
         on_offline_message/5,
         on_client_wakeup/1,
         on_client_offline/1,
         on_client_gone/1]).
{{/no_mqtt_three}}

{{^no_mqtt_five}}
-export([auth_on_register_m5/6,
         on_register_m5/4,
         auth_on_publish_m5/7,
         on_publish_m5/7,
         on_deliver_m5/5,
         auth_on_subscribe_m5/4,
         on_subscribe_m5/4,
         on_unsubscribe_m5/4,
         on_auth_m5/3]).
{{/no_mqtt_five}}

%%%===================================================================
%%% VerneMQ Plugin Hooks
%%%===================================================================

{{^no_mqtt_three}}
auth_on_register({_IpAddr, _Port} = Peer, {_MountPoint, _ClientId} = SubscriberId, UserName, Password, CleanSession) ->
    error_logger:info_msg("auth_on_register: ~p ~p ~p ~p ~p", [Peer, SubscriberId, UserName, Password, CleanSession]),
    ok.

auth_on_publish(UserName, {_MountPoint, _ClientId} = SubscriberId, QoS, Topic, Payload, IsRetain) ->
    error_logger:info_msg("auth_on_publish: ~p ~p ~p ~p ~p ~p", [UserName, SubscriberId, QoS, Topic, Payload, IsRetain]),
    ok.

auth_on_subscribe(UserName, ClientId, [{_Topic, _QoS}|_] = Topics) ->
    error_logger:info_msg("auth_on_subscribe: ~p ~p ~p", [UserName, ClientId, Topics]),
    ok.

on_register({_IpAddr, _Port} = Peer, {_MountPoint, _ClientId} = SubscriberId, UserName) ->
    error_logger:info_msg("on_register: ~p ~p ~p", [Peer, SubscriberId, UserName]),
    ok.

on_publish(UserName, {_MountPoint, _ClientId} = SubscriberId, QoS, Topic, Payload, IsRetain) ->
    error_logger:info_msg("on_publish: ~p ~p ~p ~p ~p ~p", [UserName, SubscriberId, QoS, Topic, Payload, IsRetain]),
    ok.

on_subscribe(UserName, {_MountPoint, _ClientId} = SubscriberId, [{_Topic, _QoS}|_] = Topics) ->
    error_logger:info_msg("on_subscribe: ~p ~p ~p", [UserName, SubscriberId, Topics]),
    ok.

on_unsubscribe(UserName, {_MountPoint, _ClientId} = SubscriberId, [{_Topic, _QoS}|_] = Topics) ->
    error_logger:info_msg("on_unsubscribe: ~p ~p ~p", [UserName, SubscriberId, Topics]),
    ok.

on_deliver(UserName, {_MountPoint, _ClientId} = SubscriberId, Topic, Payload) ->
    error_logger:info_msg("on_deliver: ~p ~p ~p ~p", [UserName, SubscriberId, Topic, Payload]),
    ok.

on_offline_message({_MountPoint, _ClientId} = SubscriberId, QoS, Topic, Payload, IsRetain) ->
    error_logger:info_msg("on_offline_message: ~p ~p ~p ~p ~p", [SubscriberId, QoS, Topic, Payload, IsRetain]),
    ok.

on_client_wakeup({_MountPoint, _ClientId} = SubscriberId) ->
    error_logger:info_msg("on_client_wakeup: ~p ~p ~p", [SubscriberId]),
    ok.

on_client_offline({_MountPoint, _ClientId} = SubscriberId) ->
    error_logger:info_msg("on_client_offline: ~p", [SubscriberId]),
    ok.

on_client_gone({_MountPoint, _ClientId} = SubscriberId) ->
    error_logger:info_msg("on_client_gone: ~p", [SubscriberId]),
    ok.

{{/no_mqtt_three}}
{{^no_mqtt_five}}
auth_on_register_m5({_IpAddr, _Port} = Peer, {_MountPoint, _ClientId} = SubscriberId, UserName, Password, CleanStart, Props) ->
    error_logger:info_msg("auth_on_register_m5: ~p ~p ~p ~p ~p ~p", [Peer, SubscriberId, UserName, Password, CleanStart, Props]),
    ok.

on_register_m5({_IpAddr, _Port} = Peer, {_MountPoint, _ClientId} = SubscriberId, UserName, Props) ->
    error_logger:info_msg("on_register_m5: ~p ~p ~p ~p", [Peer, SubscriberId, UserName, Props]),
    ok.

auth_on_publish_m5(UserName, {_MountPoint, _ClientId} = SubscriberId, QoS, Topic, Payload, IsRetain, Props) ->
    error_logger:info_msg("auth_on_publish_m5: ~p ~p ~p ~p ~p ~p ~p", [UserName, SubscriberId, QoS, Topic, Payload, IsRetain, Props]),
    ok.

on_publish_m5(UserName, {_MountPoint, _ClientId} = SubscriberId, QoS, Topic, Payload, IsRetain, Props) ->
    error_logger:info_msg("on_publish_m5: ~p ~p ~p ~p ~p ~p ~p", [UserName, SubscriberId, QoS, Topic, Payload, IsRetain, Props]),
    ok.

on_deliver_m5(UserName, {_MountPoint, _ClientId} = SubscriberId, Topic, Payload, Props) ->
    error_logger:info_msg("on_deliver_m5: ~p ~p ~p ~p ~p", [UserName, SubscriberId, Topic, Payload, Props]),
    ok.

auth_on_subscribe_m5(UserName, {_MountPoint, _ClientId} = SubscriberId, [{_Topic, _QoS}|_] = Topics, Props) ->
    error_logger:info_msg("auth_on_subscribe_m5: ~p ~p ~p ~p", [UserName, SubscriberId, Topics, Props]),
    ok.

on_subscribe_m5(UserName, {_MountPoint, _ClientId} = SubscriberId, [{_Topic, _QoS}|_] = Topics, Props) ->
    error_logger:info_msg("on_subscribe_m5: ~p ~p ~p ~p", [UserName, SubscriberId, Topics, Props]),
    ok.

on_unsubscribe_m5(UserName, {_MountPoint, _ClientId} = SubscriberId, [{_Topic, _QoS}|_] = Topics, Props) ->
    error_logger:info_msg("on_unsubscribe_m5: ~p ~p ~p ~p", [UserName, SubscriberId, Topics, Props]),
    ok.

on_auth_m5(Username, {_MountPoint, _ClientId} = SubscriberId, Props) ->
    error_logger:info_msg("on_auth_m5: ~p ~p ~p", [UserName, SubscriberId, Props]),
    ok.

{{/no_mqtt_five}}
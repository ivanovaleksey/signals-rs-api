# Signals API

Для общения агентов используется протокол [JSON-RPC 2.0](http://www.jsonrpc.org/specification).

Сообщение имеет вид
```json
{
    "jsonrpc": "2.0",
    "method": "agent.create",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "data": {
            "label": "John Doe"
        }
    }],
    "id": "qwerty"
}
```

Брокер упаковывает все полученные сообщения в конверт.
Сообщения, получаемые агентами, имеют вид
```json
{
    "sub": {
        "account_id": "31517b3d-5a14-4a14-a6c5-2ba63f7375d3",
        "agent_id": "85c36f15-5021-4ab8-91a8-0f972cdb6d3a"
    },
    "msg": "{
        \"jsonrpc\": \"2.0\",
        \"method\": \"agent.create\",
        \"params\": [{
            \"room_id\": \"050b7c6f-795c-4cb4-aeea-5ee3f9083de2\",
            \"data\": {
                \"label\": \"John Doe\"
            }
        }],
        \"id\": \"qwerty\"
    }"
}
```

## Топики

Агент отправляет все запросы к приложению через топик
```
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

Для получения ответов на запросы агент должен подписаться на топик
```
agents/A(a)u1/in/signals.netology-group.services/api/v1
```

Для получения информации о событиях агент должен подписаться на топик
```
A(a)u1 sub:
apps/signals.netology-group.services/api/v1/rooms/123/agents
```

Однако право подписки на такой топик регулируется динамически наличием соответствующего права в ACL.

Агент должен выразить намерение подписаться на такой топик.

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "subscription.create",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "data": {
            "resource": "agents"
        }
    }],
    "id": "qwerty"
}
```

```json
// {
//     "jsonrpc": "2.0",
//     "method": "agent.subscribe",
//     "params": [{
//         "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2"
//     }],
//     "id": "qwerty"
// }
```

При обработке запроса приложение выдает на права на последующую подписку.

*Response:*
```
A(a)signals pub:
agents/A(a)u1/in/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "result": {
        "data": {
            "topic": "apps/signals/api/v1/rooms/050b7c6f-795c-4cb4-aeea-5ee3f9083de2/agents"
        }
    },
    "id": "qwerty"
}
```

После получения ответа агент может подписать на указанный топик.

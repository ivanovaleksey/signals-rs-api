# Agents

Ресурс представляет агентов комнаты.

## Methods

- [Create](ch02-01-create.html)
- [Read](ch02-02-read.html)
- [Update](ch02-03-update.html)
- [Delete](ch02-04-delete.html)
- [List](ch02-05-list.html)

## Events

```
A(a)signals pub:
apps/signals.netology-group.services/api/v1/rooms/050b7c6f-795c-4cb4-aeea-5ee3f9083de2/agents
```

### Created

```json
{
    "jsonrpc": "2.0",
    "method": "event",
    "params": [{
        "type": "agent.create",
        "payload": {
            "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
            "data": {
                "label": "John Doe"
            }
        }
    }]
}
```

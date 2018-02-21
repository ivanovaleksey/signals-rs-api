# Agents

Ресурс представляет агентов комнаты.

## Methods

### Create

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "agent.create",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
        "data": {
            "label": "John Doe"
        }
    }],
    "id": "qwerty"
}
```

*Response:*
```
A(a)signals pub:
agents/A(a)u1/in/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "result": {
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
        "data": {
            "label": "John Doe"
        }
    },
    "id": "qwerty"
}
```

> TODO: Описать возможные ошибки

### Read

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "agent.read",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
    }],
    "id": "qwerty"
}
```

*Response:*
```
A(a)signals pub:
agents/A(a)u1/in/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "result": {
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
        "data": {
            "label": "John Doe"
        }
    },
    "id": "qwerty"
}
```

### Update

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "agent.update",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
        "data": {
            "label": "John Doe II"
        }
    }],
    "id": "qwerty"
}
```

*Response:*
```
A(a)signals pub:
agents/A(a)u1/in/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "result": {
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
        "data": {
            "label": "John Doe II"
        }
    },
    "id": "qwerty"
}
```

### Delete

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "agent.delete",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
    }],
    "id": "qwerty"
}
```

*Response:*
```
A(a)signals pub:
agents/A(a)u1/in/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "result": {
        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
        "data": {
            "label": "John Doe II"
        }
    },
    "id": "qwerty"
}
```

### List

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "agent.list",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2"
    }],
    "id": "qwerty"
}
```

*Response:*
```
A(a)signals pub:
agents/A(a)u1/in/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "result": [
        {
            "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
            "data": {
                "label": "John Doe"
            }
        }, 
        {
            "id": "ad0dbebd-a685-48a1-85e3-d01cda9d98e4",
            "data": {
                "label": "Johnny Appleseed"
            }
        }
    ],
    "id": "qwerty"
}
```

## Events

```
A(a)signals pub:
apps/signals/api/v1/rooms/050b7c6f-795c-4cb4-aeea-5ee3f9083de2/agents
```

### Created

```json
{
    "jsonrpc": "2.0",
    "method": "event",
    "params": [{
        "source": {
            "app": "signals",
            "type": "agent.create",
            "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2"
        },
        "payload": {
            "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
            "data": {
                "label": "John Doe"
            }
        }
    }]
}
```

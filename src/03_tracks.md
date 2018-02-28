# Tracks

Ресурс представляет треки агентов комнаты.

## Methods

### Create

> TODO: Описать возможные ошибки

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "track.create",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "device": "screen | camera",
            "kind": "audio | video",
            "label": "human readable",
            "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
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
        "id": "915adba9-5586-4743-a22e-47cc57260e37",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "device": "camera",
            "kind": "video",
            "label": "human readable",
            "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
            "holders": []
        }
    },
    "id": "qwerty"
}
```

### Register (AKA, create remote track)

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "track.register",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "agent_id": "9839b399-e5f5-4f1c-acb8-bad33db615a9"
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
        "id": "915adba9-5586-4743-a22e-47cc57260e37",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "device": "camera",
            "kind": "video",
            "label": "human readable",
            "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
            "holders": [
                {
                    "id": "9839b399-e5f5-4f1c-acb8-bad33db615a9"
                }
            ]
        }
    },
    "id": "qwerty"
}
```

### Delete

> При удалении локального трека удалить все связанные remote

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "track.delete",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "id": "915adba9-5586-4743-a22e-47cc57260e37"
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
        "id": "915adba9-5586-4743-a22e-47cc57260e37",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "device": "camera",
            "kind": "video",
            "label": "human readable",
            "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
            "holders": []
        }
    },
    "id": "qwerty"
}
```

### Unregister (AKA, delete remote track)

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1
```

```json
{
    "jsonrpc": "2.0",
    "method": "track.unregister",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "agent_id": "9839b399-e5f5-4f1c-acb8-bad33db615a9"
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
        "id": "915adba9-5586-4743-a22e-47cc57260e37",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "device": "camera",
            "kind": "video",
            "label": "human readable",
            "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
            "holders": [
                // Агенты, у которых еще остался этот трек
            ]
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
    "method": "track.list",
    "params": [{
        "room_id": "050b7c6f-795c-4cb4-aeea-5ee3f9083de2",
        "q": "" // See details below
    }],
    "id": "qwerty"
}
```

#### Фильтры

- Получение локальных треков агента
```
"q": "owner_id:1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
```

- Получение remote треков агента
```
"q": "holders.id:1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
```

- Получение всех треков агента
```
"q": "owner_id:1154b35c-e5b0-4a42-8ab2-d4967ce38c9e OR holders.id:1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
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
            "id": "915adba9-5586-4743-a22e-47cc57260e37",
            "data": {
                "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
                "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
                "device": "camera",
                "kind": "video",
                "label": "human readable",
                "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
                "holders": [
                    {
                        "id": "9839b399-e5f5-4f1c-acb8-bad33db615a9"
                    }
                ]
            }
        },
        {
            "id": "470b537a-ec18-420b-81b5-04ba0ca8e014",
            "data": {
                "stream_id": "688e7193-6a7f-48b3-a1a2-c76402144282",
                "track_id": "9923576c-1ee5-4987-a797-6cb4982d45de",
                "device": "camera",
                "kind": "video",
                "label": "human readable",
                "owner_id": "9839b399-e5f5-4f1c-acb8-bad33db615a9",
                "holders": [
                    {
                        "id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
                    }
                ]
            }
        }
    ],
    "id": "qwerty"
}
```

## Events

Чтобы получать информацию о событиях, необходимо оформить подписку:
```
A(a)u1 sub:
apps/signals.netology-group.services/api/v1/rooms/050b7c6f-795c-4cb4-aeea-5ee3f9083de2/tracks
```

### Create

```json
{
    "jsonrpc": "2.0",
    "method": "event",
    "params": [{
        "type": "track.create",
        "payload": {
            "id": "915adba9-5586-4743-a22e-47cc57260e37",
            "data": {
                "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
                "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
                "device": "camera",
                "kind": "video",
                "label": "human readable",
                "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
                "holders": []
            }
        }
    }]
}
```

### Register (kind of update)

```json
{
    "jsonrpc": "2.0",
    "method": "event",
    "params": [{
        "type": "track.update",
        "payload": {
            "id": "915adba9-5586-4743-a22e-47cc57260e37",
            "data": {
                "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
                "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
                "device": "camera",
                "kind": "video",
                "label": "human readable",
                "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
                "holders": [
                    {
                        "owner_id": "9839b399-e5f5-4f1c-acb8-bad33db615a9"
                    }
                ]
            }
        }
    }]
}
```

### Delete

```json
{
    "jsonrpc": "2.0",
    "method": "event",
    "params": [{
        "type": "track.delete",
        "payload": {
            "id": "915adba9-5586-4743-a22e-47cc57260e37",
            "data": {
                "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
                "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
                "device": "camera",
                "kind": "video",
                "label": "human readable",
                "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
                "holders": []
            }
        }
    }]
}
```

### Unregister (kind of update)

### Register

```json
{
    "jsonrpc": "2.0",
    "method": "event",
    "params": [{
        "type": "track.update",
        "payload": {
            "id": "915adba9-5586-4743-a22e-47cc57260e37",
            "data": {
                "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
                "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
                "device": "camera",
                "kind": "video",
                "label": "human readable",
                "owner_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e",
                "holders": [
                    // Агенты, у которых еще остался этот трек
                ]
            }
        }
    }]
}
```

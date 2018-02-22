# Tracks

Ресурс представляет треки агентов комнаты.

## Methods

### Create

> TODO: Описать возможные ошибки

*Request:*
```
A(a)u1 pub: 
agents/A(a)u1/out/signals.netology-group.services/api/v1/rooms/123/tracks
```
```json
{
    "type": "TracksCreateRequest",
    "payload": {
        "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
        "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
        "device": "screen | camera",
        "kind": "audio | video",
        "label": "human readable",
        "agent_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
    },
    "cid": "qwerty"
}
```

*Response:*

```
A(a)signals pub: 
agents/A(a)u1/in/signals.netology-group.services/api/v1/rooms/123/tracks
```

```json
{
    "type": "TracksCreateResponse",
    "payload": {
        "id": "915adba9-5586-4743-a22e-47cc57260e37",
        "data": {
            "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
            "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
            "device": "screen | camera",
            "kind": "audio | video",
            "label": "human readable"
        }
    },
    "cid": "qwerty"
}
```

### TODO: Create remote
### TODO: Delete local
### TODO: Delete remote 

### List

*Request:*
```
A(a)u1 pub: 
agents/A(a)u1/out/signals.netology-group.services/api/v1/rooms/123/tracks
```
```json
{
    "type": "TracksListRequest",
    "payload": {
        "agent_id": "1154b35c-e5b0-4a42-8ab2-d4967ce38c9e"
    }
    "cid": "qwerty"
}
```

*Response:*

```
A(a)signals pub: 
agents/A(a)u1/in/signals.netology-group.services/api/v1/rooms/123/tracks
```

```json
{
    "type": "TracksListResponse",
    "payload": {
        "local": [
            {
                "id": "915adba9-5586-4743-a22e-47cc57260e37",
                "data": {
                    "stream_id": "b16724bb-e970-4f4e-93c6-ac0649d43bc9",
                    "track_id": "0ba2daf8-dfa3-4e64-b535-681508b6834d",
                    "device": "screen | camera",
                    "kind": "audio | video",
                    "label": "human readable"
                }
            }
        ],
        "remote": [
            {
                "id": "470b537a-ec18-420b-81b5-04ba0ca8e014",
                "data": {
                    "stream_id": "688e7193-6a7f-48b3-a1a2-c76402144282",
                    "track_id": "9923576c-1ee5-4987-a797-6cb4982d45de",
                    "device": "screen | camera",
                    "kind": "audio | video",
                    "label": "human readable"
                }
            }
        ]
    },
    "cid": "qwerty"
}
```

## Events

Чтобы получать информацию о событиях, необходимо оформить подписку:
```
A(a)u1 sub:
apps/signals.netology-group.services/api/v1/rooms/050b7c6f-795c-4cb4-aeea-5ee3f9083de2/tracks
```

### TODO: Created
### TODO: Created remote ?
### TODO: Deleted
### TODO: Deleted remote ?

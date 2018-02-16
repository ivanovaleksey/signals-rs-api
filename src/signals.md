# Signals

## Actions

### Offer

> Описать, что получает агент, которому посылают оффер

*Request:*
```
A(a)u1 pub: 
agents/A(a)u1/out/signals.netology-group.services/api/v1/rooms/123
```

```json
{
    "type": "OfferRequest",
    "payload": {
        "jsep": { "type": "offer", "sdp": "..." },
		"to": "A(x)u2 ID",
		"tracks": [
			...
		]
    },
    "cid": "qwerty"
}
```

*Response:*

```
A(a)signals pub: 
agents/A(a)u1/in/signals.netology-group.services/api/v1/rooms/123
```

```json
{
    "type": "ACK",
    "cid": "qwerty"
}
```

### Answer

> Описать, что получает агент, которому посылают ансвер

*Request:*
```
A(x)u2 pub:
agents/A(x)u2/out/signals.netology-group.services/api/v1/rooms/123
```

```json
{
    "type": "AnswerRequest",
    "payload": {
        "jsep": { "type": "answer", "sdp": "..." },
		"to": "A(a)u1 ID"
    },
    "cid": "qwerty"
}
```

*Response:*

```
A(a)signals pub: 
agents/A(x)u2/in/signals.netology-group.services/api/v1/rooms/123
```

```json
{
    "type": "ACK",
    "cid": "qwerty"
}
```

### Candidate

> Описать, что получает агент, которому посылают ICE кандидата

*Request:*
```
A(a)u1 pub:
agents/A(a)u1/out/signals.netology-group.services/api/v1/rooms/123
```

```json
{
    "type": "CandidateRequest",
    "payload": {
        "candidate": { ... },
		"to": "A(x)u2 ID"
    },
    "cid": "qwerty"
}
```

*Response:*

```
A(a)signals pub:
agents/A(a)u1/in/signals.netology-group.services/api/v1/rooms/123
```

```json
{
    "type": "ACK",
    "cid": "qwerty"
}
```

## Events

Чтобы получать информацию о событиях, необходимо оформить подписку:
```
A(a)u1 sub:
agents/A(a)u1/in/signals.netology-group.services/api/v1/rooms/123/#
```

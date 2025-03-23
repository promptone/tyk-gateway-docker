# Start API Gateway
docker-compose up

^c to exit.

Must run to get access to External Services and for app to use App Interegator

## Apps

### Party Planner App

```
    "proxy": {
        "listen_path": "/api/",
        "target_url": "http://ethereum:3333",
        "strip_listen_path": false
    }
```

or, when port forwarding is set up from exeternal port 80 -> ethereum:3333

    "proxy": {
        "listen_path": "/api/",
        "target_url": "http://objectstore.promptone.ai",
        "strip_listen_path": false
    }

### Open AI Chat Completion for App Interrogator. (Just another example, not used for apps)
```
    "proxy": {
        "listen_path": "/v1/chat/completions/",
        "target_url": "https://api.openai.com",
        "strip_listen_path": false
    }
```
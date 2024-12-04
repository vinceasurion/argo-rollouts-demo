# argo-rollouts-demo

Argo Rollouts Demo application running <http://localhost:3002/>

## Commands

Watch the rollout status

```sh
k argo rollouts get rollout rollouts-demo --watch
```

Update deployment image

```sh
k argo rollouts set image rollouts-demo \
  rollouts-demo=argoproj/rollouts-demo:yellow
```

Promote Rollout

```sh
k argo rollouts promote rollouts-demo
```

Abort Rollout

```sh
# Red image indicates error
k argo rollouts set image rollouts-demo \
  rollouts-demo=argoproj/rollouts-demo:red

k argo rollouts abort rollouts-demo
```

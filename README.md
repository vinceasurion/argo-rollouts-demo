# argo-rollouts-demo

Argo Rollouts Demo

## Commands

Update deployment image

```sh
k argo rollouts set image rollouts-demo \
  rollouts-demo=argoproj/rollouts-demo:yellow
```

Promote Rollout

```sh
k argo rollouts promote rollouts-demo
```

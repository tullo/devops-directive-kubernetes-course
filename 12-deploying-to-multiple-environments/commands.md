# commands

## kustomize

```bash
tree kustomize/
kustomize/
├── Taskfile.yaml
├── base
│   ├── api-golang
│   │   ├── Deployment.yaml
│   │   ├── IngressRoute.yaml
│   │   ├── Secret.yaml
│   │   ├── Service.yaml
│   │   └── kustomization.yaml
│   ├── api-node
│   │   ├── Deployment.yaml
│   │   ├── IngressRoute.yaml
│   │   ├── Secret.yaml
│   │   ├── Service.yaml
│   │   └── kustomization.yaml
│   ├── client-react
│   │   ├── ConfigMap.yaml
│   │   ├── Deployment.yaml
│   │   ├── IngressRoute.yaml
│   │   ├── Service.yaml
│   │   └── kustomization.yaml
│   ├── common
│   │   ├── Middleware.yaml
│   │   ├── Namespace.yaml
│   │   └── kustomization.yaml
│   ├── kustomization.yaml
│   └── load-generator-python
│       ├── ConfigMap.yaml
│       ├── Deployment.yaml
│       └── kustomization.yaml
├── production
│   ├── api-golang
│   │   ├── kustomization.yaml
│   │   └── patches
│   │       ├── Deployment.yaml
│   │       └── IngressRoute.replace-host.yaml
│   ├── api-node
│   │   ├── kustomization.yaml
│   │   └── patches
│   │       ├── Deployment.yaml
│   │       └── IngressRoute.replace-host.yaml
│   ├── client-react
│   │   ├── kustomization.yaml
│   │   └── patches
│   │       ├── Deployment.yaml
│   │       └── IngressRoute.replace-host.yaml
│   ├── common
│   │   └── kustomization.yaml
│   ├── kustomization.yaml
│   └── load-generator-python
│       ├── kustomization.yaml
│       └── patches
│           └── Deployment.yaml
└── staging
    ├── api-golang
    │   ├── kustomization.yaml
    │   └── patches
    │       ├── Deployment.yaml
    │       └── IngressRoute.replace-host.yaml
    ├── api-node
    │   ├── kustomization.yaml
    │   └── patches
    │       ├── Deployment.yaml
    │       └── IngressRoute.replace-host.yaml
    ├── client-react
    │   ├── kustomization.yaml
    │   └── patches
    │       ├── Deployment.yaml
    │       └── IngressRoute.replace-host.yaml
    ├── common
    │   └── kustomization.yaml
    ├── kustomization.yaml
    └── load-generator-python
        ├── kustomization.yaml
        └── patches
            └── Deployment.yaml

27 directories, 49 files
```

## kustomize

## kluctl

kluctl/.kluctl.yaml

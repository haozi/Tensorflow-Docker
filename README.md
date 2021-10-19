# TensorFlow 2

> 最后更新 2021-10-19
## Quick start

```bash
docker run -it --rm -p 8888:8888 -v $PWD:/notebooks haozhi/tensorflow
```

## Advanced: Run as a Server

1. make a workspace and cd

```bash
mkdir -p ~/TensorflowWorkspace
cd ~/TensorflowWorkspace
```

```bash
docker run --name='tensorflow' --hostname='tensorflow' -itd -p 8888:8888 -v $PWD:/notebooks haozhi/tensorflow zsh -c 'cd ~/notebooks && ~/.conda/bin/jupyter lab --ip=0.0.0.0'
```

* you need run `docker logs -ft tensorflow` to find the login token or use `--NotebookApp.token=""` start option.

### Stop

```bash
docker stop tensorflow
```

### Restart

```bash
docker restart tensorflow
```

### Exec in Docker

```bash
docker exec -it tensorflow /bin/zsh
```

### Remove (danger)

```bash
docker rm tensorflow -f
```

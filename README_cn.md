# DOLFINx 教程
[![Test, build and publish](https://github.com/jorgensd/dolfinx-tutorial/actions/workflows/build-publish.yml/badge.svg)](https://github.com/jorgensd/dolfinx-tutorial/actions/workflows/build-publish.yml)
[![Test release branch against DOLFINx nightly build](https://github.com/jorgensd/dolfinx-tutorial/actions/workflows/nightly.yml/badge.svg)](https://github.com/jorgensd/dolfinx-tutorial/actions/workflows/nightly.yml)

作者: Jørgen S. Dokken
翻译：马鹏飞

这里是 DOLFINx 教程的 [webpage](https://jorgensd.github.io/dolfinx-tutorial/)的源代码，
如果你有任何问题和建议，欢迎提交 Github Issues.

## 贡献
如果你想为这个教程做出共享，请先 fork 这个仓库，改动内容，通过 CI 测试，最后再发起 pull request。
CI 测试可以在本地进行，下载 [act](https://github.com/nektos/act) ，然后运行命令
```bash
act -j test-nightly
```
提交的代码要支持并行。

如果你想增加一个章节，添加一个 Jupyter notebook 再发起 pull request ，不要将它直接放入 tutorial. 
这样我们可以先评阅修改代码，然后在将其放入教程里。 

## 依赖
建议先通过docker或者conda安装DOLFINx，然后再安装其他依赖：
```bash
python3 -m pip install --no-binary=h5py -e .
```

# Docker 镜像
这个教程有自己的 Docker [镜像](https://github.com/jorgensd/dolfinx-tutorial/pkgs/container/dolfinx-tutorial)，
建立在镜像 `dolfinx/lab:nightly` 之上，可以看 [Dockerfile](docker/Dockerfile) 和 [pyproject.toml](./pyproject.toml).

##
在主目录运行以下代码，从源码开始构建含有 DOLFINx, Basix, UFL, FFCx 的镜像。
```bash
cd docker
docker build -f ./docker/Dockerfile -t local_lab_env .
```
```bash
 docker run --rm -ti -v $(pwd):/root/shared -w /root/shared  --init -p 8888:8888 local_lab_env
```

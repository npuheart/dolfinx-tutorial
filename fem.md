# 项目概览

The FEniCS project is a research and software project aimed at creating mathematical methods and software for solving partial differential equations. This includes creating intuitive, efficient and flexible software. The project was initiated in 2003, and is developed in collaboration between researchers from a number of universities and research institutes around the world. For the latest updates and more information about the FEniCS project, visit the [FEniCS](https://fenicsproject.org) webpage.

FEniCS项目的最新版本为FEniCSx，它由数个构建块组成：
1. [Basix](https://github.com/FEniCS/basix/)
2. [UFL](https://github.com/FEniCS/ufl) 
3. [FFCx](https://github.com/FEniCS/ffcx)
4. [DOLFINx](https://github.com/FEniCS/dolfinx)

DOLFINx是FEniCSx的高性能C++后端，实现了网格、函数空间和函数等结构，包含计算密集型功能，如有限元组装、网格细化等算法，提供了线性代数求解器和数据结构的接口，如[PETSc](https://www.mcs.anl.gov/petsc/)。UFL是一种高级形式语言，用于描述具有高级数学语法的变分公式。FFCx是FEniCSx的线性型编译器，他能将UFL编写的变分公式生成有效的C语言代码。Basix是FEniCSx的有限元后端，负责生成有限元基函数。

# What you will learn

The goal of this tutorial is to demonstrate how to apply the finite element to solve PDEs in FEniCS. Through a series of examples, we will demonstrate how to:

- Solve linear PDEs (such as the Poisson equation),
- Solve time-dependent PDEs (such as the heat equation),
- Solve non-linear PDEs,
- Solve systems of time-dependent non-linear PDEs.

Important topics involve how to set boundary conditions of various types (Dirichlet, Neumann, Robin), how to create meshes, how to define variable coefficients, how to interact with linear and non-linear solvers, and how to post-process and visualize solutions.

# How to use this tutorial

Most of the mathematical part of the examples will be kept at a simple level, such that we can keep the focus on the functionality and syntax of FEniCSx. Therefore we will mostly use the Poisson equation and the time-dependent diffusion equation as model problems. We will use adjusted input data, such that the solution of the problem can be exactly reproduced on uniform, structured meshes with the finite element method. This greatly simplifies the verification of the implementations.
Occasionally we will consider a more physically relevant example to remind the reader that there are no big leaps from solving simple model problems to challenging real-world problems when using FEniCSx.

## 交互式教程
本书以Jupyter Book的形式发布，这些交互式笔记本可在浏览器中运行，点击教程右上角的![Binder symbol](binder.png)符号可以打开这些笔记本。

## Obtaining the software

If you would like to work with DOLFINx outside of the binder-notebooks, you need to install the FEniCS software. 
The recommended way of installing DOLFINx for new users is by using Docker. 
Docker is a software that uses *containers* to supply software across different kinds of operating systems (Linux, Mac, Windows). The first step is to install docker, following the instructions at their [webpage](https://docs.docker.com/get-started/).

All notebooks can be converted to python files using [nbconvert](https://nbconvert.readthedocs.io/en/latest/).

### Tutorial compatible docker images
The tutorial uses several dependencies for meshing, plotting and timings. A compatible `JupyterLab` image is available in the [Github Packages](https://github.com/jorgensd/dolfinx-tutorial/pkgs/container/dolfinx-tutorial))

To use the notebooks in this tutorial with DOLFINx on your own computer, you should use the docker image using the following command
```bash
  docker run --init -p 8888:8888 -v "$(pwd)":/root/shared ghcr.io/jorgensd/dolfinx-tutorial:v0.6.0
```
This image can also be used as a normal docker container by adding:
```bash
  docker run --ti -v "$(pwd)":/root/shared  --entrypoint="/bin/bash" ghcr.io/jorgensd/dolfinx-tutorial:v0.6.0
```

The tutorials can also be exported as a notebook or PDF by clicking the ![Download](save.png)-symbol in the top right corner of the relevant tutorialThe notebook can in turn be used with a Python kernel which has DOLFINx.

### Official images

The FEniCS project supplies pre-built docker images at [https://hub.docker.com/r/dolfinx/dolfinx](https://hub.docker.com/r/dolfinx/dolfinx).
The [Dockerfile](https://github.com/FEniCS/dolfinx/blob/main/docker/Dockerfile)
provides a definitive build recipe. As the DOLFINx docker images are hosted at Docker-hub, one can directly access the image
```
docker run dolfinx/dolfinx:v0.6.0-r1
```
There are several ways of customizing a docker container, such as mounting volumes/sharing folder, setting a working directory, sharing graphical interfaces etc. See `docker run --help` for an extensive list.

Once you have installed DOLFINx, either by using docker or installing form source, you can test the installation by running `python3 -c "import dolfinx"`. If all goes well, no error-messages should appear.


## Installation from source
The software is quite complex, and building the software and all the dependencies from source can be a daunting task. The list of dependencies can be found at [docs.fenicsproject.org/dolfinx/main/python/installation.html](https://docs.fenicsproject.org/dolfinx/main/python/installation.html).

## Introduction to Python for beginners
If you are a beginner in Python, we suggest reading {cite}`Langtangen2016` by Hans Petter Langtangen, which will give you a gentle introduction to the Python programming language. Note that DOLFINx, being a state of the art finite element solver, only supports Python 3, as Python 2 reached its end of life January 1st, 2020. To automatically transfer Python 2 scripts to Python 3, it is suggested to use the [2to3](https://docs.python.org/3/library/2to3.html)-package, which provides automated translation of the code.


## 有限元方法的介绍
过去十年，许多有限元方法的课堂笔记已开源，例如：

- [Numerical methods for partial differential equations](http://hplgit.github.io/num-methods-for-PDEs/doc/web/index.html), by Hans Petter Langtangen
- [Finite elements - analysis and implementation](https://finite-element.github.io/), by David A. Ham and Colin J. Cotter
- [Finite element analysis for coupled problems](https://david-kamensky.eng.ucsd.edu/teaching/mae-207-fea-for-coupled-problems), by David Kamensky. 
- [DefElement: an encyclopedia of finite element definitions](https://defelement.com/), by Matthew W. Scroggs.

有限元方法有许多好教材，FEniCS tutorial书中有相关介绍，具体内容请看章节 1.6.2  {cite}`FenicsTutorial`。

## References
```{bibliography}
   :filter: cited and ({"fem"} >= docnames)
```

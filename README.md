# README

docker上で動作するRails5 & Nodejs(7.2.0)環境です。Dockerをインストールしてあれば、rubyやnodeのインストールなしにプロジェクトを始めることができます。

## Docker Version
dockerは以下のバージョンで動作することを確認しています
 ```
 Docker version 1.13.0, build 49bf474
 docker-compose version 1.10.0, build 4bd6f1a
 docker-machine version 0.9.0, build 15fd4c7
 ```
 
## Application Version

 * Ruby 2.3.1
 * Ruby On Rails 5.0.0
 * Nodejs v7.2.0
 * npm 3.10.9
 
## Docker Installation
 お持ちのPCに合ったものインストールしてください
 * [Install On Mac](https://docs.docker.com/docker-for-mac/ )
 * [Install On Windows](https://docs.docker.com/docker-for-windows/ )
 * [Install On Linux](https://docs.docker.com/engine/installation/linux/)

## 設定手順

### 1.Folk this Project
 * まずはこのプロジェクトをフォークしてください。
 
### 2.Clone As your project
 * フォークしたプロジェクトをあなたの環境にcloneしてくだ
 
### 3.Bundle install and npm install
```shell
 docker-compose run --rm web bundle install
 docker-compose run --rm web npm install
```
 
### 4.Build Container
 ```shell
 docker-compose build
 ```
 
### 5.Database Initialization

```shell
 docker-compose run --rm web rails db:create
 docker-compose run --rm web rails db:migrate
``` 

### 6.Run Container

```shell
 docker-compose up
```
 

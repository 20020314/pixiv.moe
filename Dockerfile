#指定Node版本
FROM node:16.15.0
#复制项目
ADD . /home/app
#指定运行目录
WORKDIR /home/app
#忽略错误
RUN yarn config set ignore-engines true
#安装依赖
RUN yarn 
#指定运行端口
EXPOSE 80
#指定运行命令
CMD ["npm", "start"]

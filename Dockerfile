# 通用模板 -茗
#指定Node版本
FROM node:17.9.0-slim
#设置API路径
ENV PIXIV_API_ENTRY /api
#复制项目
ADD . /home/app
#指定运行目录
WORKDIR /home/app
#使用NPM更新依赖
RUN npm outdated
#忽略错误
RUN yarn config set ignore-engines true
#安装依赖
RUN yarn 
#指定运行端口
EXPOSE 23333
#指定运行命令
CMD ["npm", "start"]

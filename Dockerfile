FROM node:15

# устанавливаем простой HTTP-сервер для статики
RUN yarn global add http-server

# делаем каталог 'app' текущим рабочим каталогом
WORKDIR /app

# копируем оба 'package.json' и 'package-lock.json' (если есть)
COPY package.json ./
COPY yarn.lock ./

# устанавливаем зависимости проекта
RUN yarn

# копируем файлы и каталоги проекта в текущий рабочий каталог (т.е. в каталог 'app')
COPY . .

# собираем приложение для production с минификацией
RUN yarn build

EXPOSE 8080
CMD [ "http-server", "dist" ]
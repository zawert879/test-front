# Используем node image в качестве базового образа
FROM node:14-alpine

# Установка утилиты curl для удобства
RUN apk add --no-cache curl

# Установка Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | sh

# Установка зависимостей
WORKDIR /app
COPY package.json yarn.loc* ./
RUN yarn install --frozen-lockfile

# Копирование остальных файлов приложения
COPY . .

# Запуск приложения
CMD ["yarn", "start"]
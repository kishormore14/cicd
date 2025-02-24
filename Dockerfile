FrOM node:18 as build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
# Copy source code and build the Angular app
COPY . .
RUN npm run build --prod


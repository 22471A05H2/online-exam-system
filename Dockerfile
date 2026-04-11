FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

# 🔥 FIX PERMISSION
RUN chmod +x mvnw

# 🔥 BUILD PROJECT
RUN ./mvnw clean package -DskipTests

EXPOSE 10000

CMD ["java", "-jar", "target/online-exam-0.0.1-SNAPSHOT.jar"]
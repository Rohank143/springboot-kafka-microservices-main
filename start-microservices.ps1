Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd api-gateway; .\mvnw.cmd spring-boot:run" -WindowStyle Normal
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd identity-service; .\mvnw.cmd spring-boot:run" -WindowStyle Normal
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd product-service; .\mvnw.cmd spring-boot:run" -WindowStyle Normal
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd order-service; .\mvnw.cmd spring-boot:run" -WindowStyle Normal
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd payment-service; .\mvnw.cmd spring-boot:run" -WindowStyle Normal
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd email-service; .\mvnw.cmd spring-boot:run" -WindowStyle Normal

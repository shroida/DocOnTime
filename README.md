# Doc On Time
Doc On Time is a Flutter-based application designed for scheduling doctor appointments efficiently. It provides a seamless user experience by integrating core functionalities like appointment booking, doctor profiles, and notifications.

### 🛠️ Project Structure


![files structure](https://github.com/user-attachments/assets/a1c47906-dc85-487e-a5a7-7c4bc10999c1)

### 🧩 Core Modules
#### 1. Dependency Injection
Handles service registration and provides centralized access to instances using libraries like get_it.
#### 2. Networking
API service setup using dio.
Handles REST API calls and response parsing.
Interceptor for adding authentication tokens and logging.
#### 3. Routing
Centralized route definitions using GoRouter or Navigator 2.0.
Organized navigation flow for modularity.
#### 4. Helpers
Collection of utility functions (e.g., date formatters, validators, etc.).
#### 5. Theming
Custom ThemeData for light and dark modes.
Centralized colors, fonts, and styles.
#### 6. Widgets
Contains reusable and shared widgets like buttons, cards, and loading spinners.

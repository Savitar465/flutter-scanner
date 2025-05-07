# Plant Identifier with Personal Journal

Description: Uses the camera to capture photos of plants. Using a local database (such as SQLite or Hive), the user can save daily notes about each plant (watering, growth, health).

Possible extras: Integration of a plant recognition API (optional), log export.

Ecological and self-care approach.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Directory structure

``` text
lib/
├── core/                         # Código reutilizable y transversal
│   ├── errors/                   # Manejo de errores
│   ├── utils/                    # Funciones utilitarias
│   ├── network/                  # Clientes HTTP, interceptores, etc.
│   ├── theme/                    # Temas de la app
│   └── providers/                # Providers globales (ej: conectividad, logger)
│
├── features/                     # Módulos o funcionalidades específicas
│   └── todos/                    # Ejemplo de feature: "todos"
│       ├── data/                 # Capa de datos
│       │   ├── datasources/      # API, BD local, etc.
│       │   ├── models/           # Modelos de datos (DTOs)
│       │   └── repositories/     # Implementación de repositorios
│       │
│       ├── domain/               # Capa de dominio
│       │   ├── entities/         # Entidades del negocio
│       │   ├── repositories/     # Contratos (abstract class)
│       │   └── usecases/         # Casos de uso
│       │
│       ├── presentation/         # UI + lógica de estado
│       │   ├── controllers/      # Riverpod Notifiers / Providers
│       │   ├── pages/            # Pantallas principales
│       │   └── widgets/          # Widgets específicos de esta feature
│
├── app/                          # Configuración global
│   ├── router/                   # GoRouter, rutas y navegación
│   ├── localization/             # Traducciones
│   └── app.dart                  # Widget raíz
│
└── main.dart                     # Punto de entrada de la aplicación
```
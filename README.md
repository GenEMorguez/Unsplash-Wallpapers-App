# 🖼️ Unsplash Wallpapers App

Proyecto Final de la asignatura **Frameworks de Desarrollo Móvil**.  
Aplicación móvil desarrollada en **Flutter** que consume la API de Unsplash para explorar y buscar fotografías de alta calidad.

---

## 📱 Características

- 🏠 **Galería principal** — fotos populares en grid tipo Pinterest (Masonry)
- 🔍 **Búsqueda por palabra clave** — busca cualquier tema y obtén resultados en tiempo real
- 📂 **Categorías rápidas** — chips de categorías populares (nature, architecture, travel...)
- 📷 **Vista de detalle** — foto completa con información del fotógrafo y dimensiones
- ❤️ **Favoritos** — guarda tus fotos favoritas localmente
- 🌙 **Dark / Light Mode** — tema persistente con SharedPreferences
- ♾️ **Paginación infinita** — carga más fotos al hacer scroll (Lazy Loading)
- 📡 **Offline mode** — manejo de errores de conectividad

---

## 🛠️ Tecnologías

| Tecnología | Uso |
|---|---|
| Flutter | Framework principal |
| Riverpod (StateNotifier) | Manejo de estados |
| Dio | Cliente HTTP / consumo de API |
| go_router | Navegación declarativa |
| Freezed + json_serializable | Modelos inmutables con serialización |
| SharedPreferences | Persistencia local (favoritos y tema) |
| cached_network_image | Caché de imágenes |
| flutter_staggered_grid_view | Grid tipo Masonry |
| flutter_animate | Animaciones de entrada |
| shimmer | Skeleton loading |
| connectivity_plus | Detección de conexión |

---

## 🏗️ Arquitectura

Clean Architecture con 3 capas:

```
lib/
├── core/
│   ├── constants/       # Constantes, API key, categorías
│   ├── network/         # Cliente Dio con interceptores
│   ├── router/          # Configuración de go_router
│   └── theme/           # Temas light y dark
│
├── data/                # Capa de Datos
│   ├── datasources/     # Remote (Unsplash API) y Local (SharedPreferences)
│   ├── models/          # Modelos Freezed con JSON serialization
│   └── repositories/    # Implementación de repositorios
│
└── presentation/        # Capa de Presentación
    ├── providers/       # Providers de Riverpod (StateNotifier)
    └── screens/
        ├── splash/      # Pantalla de inicio con animación
        ├── home/        # Galería principal con lazy loading
        ├── search/      # Búsqueda por palabra clave
        ├── detail/      # Detalle de foto con Hero animation
        ├── favorites/   # Fotos guardadas localmente
        └── settings/    # Dark/Light mode
```

---

## 🚀 Instalación

```bash
# 1. Clonar el repositorio
git clone https://github.com/tu-usuario/unsplash_wallpapers_app.git
cd unsplash_wallpapers_app

# 2. Instalar dependencias
flutter pub get

# 3. Generar código (Freezed + Riverpod)
flutter pub run build_runner build --delete-conflicting-outputs

# 4. Agregar soporte web (solo la primera vez)
flutter create .

# 5. Ejecutar
flutter run -d chrome
```

---

## 🌐 API

Este proyecto usa la **[Unsplash API](https://unsplash.com/developers)** (gratuita).

| Endpoint | Descripción |
|---|---|
| `GET /photos` | Lista de fotos populares paginadas |
| `GET /search/photos?query=` | Búsqueda por palabra clave |
| `GET /photos/:id` | Detalle de una foto |

---

## 📸 Pantallas

| Splash | Home | Búsqueda | Detalle |
|---|---|---|---|
| Animación de entrada | Grid masonry | Búsqueda + categorías | Foto completa + info |

---

## 👩‍💻 Desarrollado por

**Génesis Moreno** — Estudiante de Ingeniería en Sistemas  
Asignatura: Frameworks de Desarrollo Móvil

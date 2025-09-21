# Bookly App
This Flutter app demonstrates a comprehensive book discovery and reading platform using Clean Architecture and BLoC pattern for state management.

## Features
**Splash Screen**: An elegant welcome screen with animated logo and smooth transition to the home screen with custom loading indicators.

**Home Screen**: Displays featured books and newest books fetched from Google Books API. Features horizontal scrollable list of featured books with high-quality cover images, vertical list of newest books with titles, authors, star ratings, and price information.

**Search Functionality**: Advanced book search system allowing users to discover books by title, author, genre, or keywords with real-time search suggestions and filtering options.

**Book Details**: Comprehensive book information screen displaying cover image, detailed metadata including title, author, rating information, complete book description, similar books recommendations, and action buttons for preview and external book access.

**Navigation**: Smooth navigation between screens using Go Router with custom page transitions and navigation animations throughout the app.

**Error Handling**: Robust error management system with custom error widgets, network failure handling, and user-friendly error messages with retry functionality.

## Architecture and State Management
### Architecture
The app follows Clean Architecture principles with clear separation of concerns:

**Data Layer**: Handles external data sources including Google Books API integration, repository implementations, and data model definitions for book entities.

**Domain Layer**: Contains business logic contracts, repository interfaces, and use case implementations for book operations like fetching and searching.

**Presentation Layer**: Manages UI components, view screens, and BLoC state management with proper separation between business logic and presentation logic.

### State Management
The app uses BLoC pattern with flutter_bloc for efficient state management:

**FeaturedBooksCubit**: Manages featured books state with loading, success, and error states for the home screen carousel display.

**NewestBooksCubit**: Handles newest books data fetching and state management for the main book listing section.

**SimilarBooksCubit**: Controls similar books recommendations on the book details screen with dynamic loading based on book categories.

### API Integration
The app integrates with Google Books API through custom ApiService:

**Book Fetching**: Retrieves featured books, newest publications, and search results with proper filtering for free ebooks and quality content.

**Error Management**: Implements comprehensive error handling using Either types from dartz package for functional programming approach to error management.

**Service Locator**: Uses GetIt for dependency injection ensuring proper separation of concerns and testable architecture.

## UI Design
The UI design follows modern Material Design principles with dark theme implementation. The home screen displays books with clean visual hierarchy, smooth scrolling animations, and consistent spacing. Custom typography using Google Fonts and GT Sectra Fine provides elegant text rendering while cached network images ensure optimal performance across all screen sizes.

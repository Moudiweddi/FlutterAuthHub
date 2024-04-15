# Simple login,create,forgot_password pages

A new Flutter project.

### main.dart

* Entry point of the application.
* Imports **Material.dart** package for UI components.
* Imports **landing_page.dart**.
* Initializes the application with a **MaterialApp** widget.
* Sets debugShowCheckedModeBanner to false to remove the debug banner.
* Sets the home screen to **LandingPage()**.
* landing_page.dart
* This is the landing page of the application.
Likely contains the main content and layout of your app.
Renders UI elements and handles user interactions.

-----------------------------------------------------------

### LandingPage.dart

### LandingPage

* Inherits from **StatelessWidget**.
* Constructs a **Scaffold** with a gradient background.
* Contains a column layout to organize UI elements vertically.
* Displays a title **Flutter UI** at the top.
* Provides options for signing in and signing up.
  . Sign in button: It navigates to the **LoginPage** when tapped.
  . Sign up button: It navigates to the **CreateNewAccountPage** when tapped.
  
## UI Elements

  * Title: Displays **Flutter UI** at the top with specific styling.
  * Sign In Button: Styled container with a white border, tapping on it navigates to the login page.
  * Sign Up Button: Styled container with a white background, tapping on it navigates to the new account creation page.

## Navigation

  * Uses **Navigator.push()** to navigate to different pages when sign-in or sign-up buttons are tapped.


-----------------------------------------------------------

### login_page.dart

## LoginPage
  * Inherits from **StatefulWidget**.
  * Constructs a **Scaffold** with a gradient background.
  * Contains a column layout to organize UI elements vertically.
  * Includes a title **Login** and a welcome message.
  * Provides text input fields for email and password.
    + Email field: accepts user email input.
    + Password field: accepts user password input with visibility toggle.
  * Includes a **Forgot Password?** link which navigates to the **ForgotPasswordPage**.
  * Provides a "Login" button for submitting credentials.
  * Offers a link for users to register for a new account (CreateNewAccountPage).
  * Utilizes **TextEditingController** for handling input text.
  * Implements validation functions for email and password fields (validateEmail and validatePassword).
  * Uses **Navigator.push()** for navigation to other pages.
## UI Elements
  * **Title and Welcome Message:** Displayed at the top of the screen.
  * **Input Fields:** Email and Password fields with appropriate styling.
  * **Visibility Toggle:** Allows users to toggle password visibility.
  * **Forgot Password Link:** Navigates to the forgot password page.
  * **Login Button:** Submits credentials for authentication.
  * **Register Link:** Navigates to the new account registration page.
  * **Styling:** Utilizes containers and decorations for styling.
## Navigation
  * Uses **Navigator.push()** to navigate to the forgot password page and the new account registration page.


-----------------------------------------------------------

### forgot_passowrd.dart

## ForgotPasswordPage
  * Inherits from **StatelessWidget**.
  * Constructs a **Scaffold** with a gradient background.
  * Contains a column layout to organize UI elements vertically.
  * Displays instructions for entering the email associated with the user's account.
  * Provides a text input field for the user's email.
  * Offers a "Reset" button for initiating the password reset process.
  * Includes a link to return to the login page if the user remembers their password.
## UI Elements
  * **Instructions:** Prompt users to enter the email associated with their account.
  * **Email Input Field:** Allows users to input their email address.
  * **Reset Button:** Initiates the password reset process.
  * **Login Link:** Allows users to return to the login page if they remember their password.
  * **Styling:** Utilizes containers and decorations for styling.
## Navigation
  * Uses **Navigator.push()** to navigate back to the login page when the "Login" link is tapped.


-----------------------------------------------------------

### new_account.dart

## CreateNewAccountPage
  * Inherits from StatefulWidget.
  * Constructs a Scaffold with a gradient background.
  * Contains a column layout to organize UI elements vertically.
  * Provides input fields for the user's full name, email, password, and confirmation password.
  * Offers toggles for password visibility.
  * Includes validation logic for email, password, and confirmation password.
  * Provides a "Create account" button to initiate the account creation process.
  * Includes a link to navigate back to the login page if the user already has an account.
## UI Elements
  * **Input Fields:** Allows users to input their full name, email, password, and confirmation password.
  * **Visibility Toggles:** Allows users to toggle password visibility.
  * **Validation Icons:** Display checkmark icons based on whether input fields are valid.
  * **Create Account Button:** Initiates the account creation process.
  * **Login Link:** Allows users to navigate back to the login page if they already have an account.
## Navigation
  * Uses **Navigator.push()** to navigate back to the login page when the "Login" link is tapped.
## Validation
  * Validates email format and password strength.
  * Ensures the confirmation password matches the password.


-----------------------------------------------------------

### form_vailidation.dart

## validateEmail
  * Validates the format of the email address using a regular expression.
  * Displays an error dialog if the email is empty or not in a valid format.
  * Prints the valid email address in debug mode.
## validatePassword
  * Validates the length of the password, ensuring it is at least 6 characters long.
  * Displays an error dialog if the password is empty or too short.
  * Prints the valid password in debug mode.
## ConfirmPassword
  * Checks if the confirmation password matches the original password.
  * Displays an error dialog if the confirmation password is empty or does not match the original password.
## UI Elements
  * AlertDialog: Displayed when validation fails, providing feedback to the user about the error.
## Usage
  * These functions can be called from any part of your application where input validation is required, typically triggered by form submissions.
## Debug Mode
  * Utilizes kDebugMode from the foundation.dart package to print debug messages when validation passes.
"# FlutterAuthHub" 
"# FlutterAuthHub" 
"# FlutterAuthHub" 

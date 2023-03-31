<a name="readme-top"></a>
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://paycoo.app">
    <img src="logo.png" width="200" alt="Logo">
  </a>

  <h3 align="center">Paycoo App</h3>

  <p align="center">
    Paycoo empowers you to make digital payments without the need for an internet connection!
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template">Dashboard Demo</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Android App</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#prerequisites">Prerequisites</a>
      <ul>
        <li><a href="#basics">Basics</a></li>
        <li><a href="#server">Server</a></li>
        <li><a href="#mobile-app">Mobile app</a></li>
      </ul>
    </li>
    <li>
      <a href="#admin-panel">Admin Panel</a>
      <ul>
        <li><a href="#install-on-server">Install on server</a></li>
      </ul>
    </li>
    <li>
      <a href="#mobile-app">Mobile App</a>
      <ul>
        <li><a href="#app-build-&-release">App build & release</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<div align="center">
  <a href="https://paycoo.app">
    <img src="app.png">
  </a>
</div>

Paycoo is a versatile digital payment solution that caters to the needs of various businesses, including traditional stores and E-commerce platforms. Our application provides businesses with a range of financial solutions, including a digital wallet that enables them to order goods from retailers and earn points, as well as a seamless way to obtain digital invoices and link to any other system.
For E-commerce platforms, we offer a payment gateway that allows users to pay through their Paycoo wallet or any other linked wallet while enjoying discount percentages or points. Our payment portal is designed to work smoothly and offers a way for users to pay even when they are not connected to the internet.
At Paycoo, we also prioritize the user's experience by providing them with unique features not offered by other wallets. Users can link all other digital wallets in one application, send and receive financial transfers at lower prices than competitors even offline, and enjoy digital payment solutions from any site through our Paycoo payment gateway without the need for a Visa or Mastercard. Furthermore, users can withdraw money from any ATM or traditional stores located anywhere.
Paycoo's innovative solutions and user-focused approach make it a leading player in the digital payment industry. We aim to provide businesses and individuals with a seamless, secure, and affordable payment experience that helps drive economic growth and financial inclusion.
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [Flutter](https://flutter.dev/)
* [Firebase](https://firebase.google.com/)
* [PHP](https://www.php.net/)
* [laravel](https://laravel.com/)
* [Goolge Cloud](https://cloud.google.com/)
* [Tensorflow](https://www.tensorflow.org/)
* [MySQL](https://www.mysql.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Prerequisites

### Basics:

Paycoo is a comprehensive system that offers numerous modules for mobile applications. Additionally, it includes a dashboard that serves as an administrative hub for managing the content and overseeing the processes of the mobile app.
- IDE for Mobile development, we preferred Android Studio and Xcode.
- Flutter SDK and JDK with path setup in your IDE.
- Real server Server related knowledge like apache or local machine server, we preferred to use a real server.
- Server related knowledge and we preferred cPanel in your server for quick installation.

### Server:

- Paycoo requires PHP v8.2 and MySQL 5.7+
- Mod_rewrite Apache
- BCMath PHP extension
- Ctype PHP, JSON, Mbstring, OpenSSL, PDO, Tokenizer, XML, Zip, Fileinfo, Gd, sodium Extension

### Mobile app:

- Android Studio
- Flutter SDK setup (version 3.3.7 Stable)
- JDK with path setup (only for vs code)
- Xcode for IPA file build


<!-- Admin Panel -->
## Admin Panel

### Install on server:

#### Admin Panel Installation:

Step 1: After download the code, upload the Dashboard-admin file in your server following your expected directory. paycoo admin panel can be installed on a domain or subdomain: For Example, yourdomain.com OR xyz.yourdomain.com.
      Note: Paycoo requires an SSL certificate to be installed on your domain to work with all the services. 
      
Step 2: Create a new database from your server MYSQL database, As create a DB user to the database and link that database to the DB user.

Step 3: Now you need to edit the  Database host, Database name, Database username, Database password, App Url to the .env file

![image](https://user-images.githubusercontent.com/47082945/229144763-0343189c-c47c-42cc-90bb-314278b74055.png)        

Step 4: go to the database again, and upload the our DB.sql file on it form import section in DB.



<!-- Mobile App -->
## Mobile App

### App build & releaser:
 - Don't forget to Setup the Mobile App Environment (Flutter).

#### Build for Android:

- For debug build you can run command:
```sh
flutter build apk
   ```
- You will get a larger merged apk with this. But you can split them with this command:
```sh
flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi
```
- Build file location: ``` <project>/build/app/outputs/flutter-apk/ ```
      

#### Build for IOS:

There are no general way to generate app for iOS. Apple doesn’t allow to install app like this debug way. If you want to install it on your iOS device then you have to deploy it on TestFlight or AppStore. For deploying it please follow this documentation: ``` https://docs.flutter.dev/deployment/ios ```
- But you can test it on XCode simulator




### Installation

_Below is an example of how you can instruct your audience on installing and setting up your app. This template doesn't rely on any external dependencies or services._

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/your_username_/Project-Name.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- Demo Test -->
## Demo Access

### Dashboard Admin

- Go to [https://paycoo.geeksy.tech/](https://paycoo.geeksy.tech/)     
  ```
  Phone Number:"+201021192842"
  Password:"12345678" 
  ```

### Mobile App

- Downloud Paycoo App.apk    
  ```
  Phone Number:"+201021192842"
  PIN:"2451" 
  ```
<p align="right">(<a href="#readme-top">back to top</a>)</p>




<!-- CONTACT -->
## Contact

Project Link: [https://paycoo.app/](https://paycoo.app/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: app.png

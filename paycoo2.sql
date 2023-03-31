-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2023 at 06:27 PM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u433650633_paycoo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `url`, `status`, `created_at`, `updated_at`, `receiver`) VALUES
(1, 'Banner 1', '2023-03-14-640ff4425dc95.png', 'https://paycoo.geeksy.tech/', 1, '2023-03-14 04:12:50', '2023-03-14 04:12:50', 'all'),
(2, 'Banner 2', '2023-03-14-640ff455e64fb.png', 'https://paycoo.geeksy.tech/', 1, '2023-03-14 04:13:09', '2023-03-14 04:13:09', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'business_name', 'Paycoo', NULL, NULL),
(2, 'currency', 'EGP', NULL, NULL),
(3, 'pagination_limit', '15', NULL, NULL),
(4, 'timezone', 'UTC', NULL, NULL),
(5, 'agent_commission_percent', '10', NULL, NULL),
(6, 'cashout_charge_percent', '5', NULL, NULL),
(7, 'addmoney_charge_percent', '12', NULL, NULL),
(8, 'sendmoney_charge_flat', '5', NULL, NULL),
(9, 'logo', '2023-03-30-6425a68ac7550.png', NULL, NULL),
(10, 'phone', '+201021192842', NULL, NULL),
(11, 'email', 'ahmed.abdelhady@ejust.edu.eg', NULL, NULL),
(12, 'theme', 'theme_1', NULL, NULL),
(13, 'two_factor', '0', NULL, NULL),
(14, 'phone_verification', '0', NULL, NULL),
(15, 'email_verification', NULL, NULL, NULL),
(16, 'refer_commission', NULL, NULL, NULL),
(17, 'address', 'E-JUST', NULL, NULL),
(18, 'footer_text', 'All rights reserved', NULL, NULL),
(19, 'currency_symbol_position', 'right', NULL, NULL),
(20, 'admin_commission', NULL, NULL, NULL),
(21, 'country', 'EG', NULL, NULL),
(22, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"@ssl\"}', '2022-04-07 08:27:08', '2022-04-07 08:27:16'),
(23, 'money_transfer_message', '{\"status\":1,\"message\":\"EMoney Transfer from admin\"}', NULL, NULL),
(24, 'cash_in', '{\"status\":1,\"message\":\"Cash In successfully completed.\"}', NULL, NULL),
(25, 'cash_out', '{\"status\":1,\"message\":\"Cash Out\"}', NULL, NULL),
(26, 'send_money', '{\"status\":1,\"message\":\"Send Money successfully completed.\"}', NULL, NULL),
(27, 'request_money', '{\"status\":1,\"message\":\"Money successfully requested.\"}', NULL, NULL),
(28, 'denied_money', '{\"status\":1,\"message\":\"Denied Money\"}', NULL, NULL),
(29, 'approved_money', '{\"status\":1,\"message\":\"Approved Money\"}', NULL, NULL),
(30, 'add_money', '{\"status\":1,\"message\":\"Added to your account.\"}', NULL, NULL),
(31, 'received_money', '{\"status\":1,\"message\":\"Received Money\"}', NULL, NULL),
(32, 'push_notification_key', 'AAAAA5gAK58:APA91bE1rhapmJ3fvX5BYyVq7ie-i4dAg4qPlwWxfzvkIN3PjUtQ7krynTH4mO0rg4945TkbTGnGG6wXJx8Q95LCAmrOrlHQXUn_KSTnYVJKFbr9qEJcj71V8kxz4JzU_k-efxNpEP4i', NULL, NULL),
(33, 'language', '[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":4,\"name\":\"Arabic\",\"direction\":\"rtl\",\"code\":\"ar\",\"status\":1,\"default\":false}]', NULL, '2023-03-13 06:20:07'),
(34, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":\"\",\"paypal_secret\":\"\"}', '2022-04-10 09:41:04', '2022-04-10 09:41:24'),
(35, 'privacy_policy', '<h1><strong><strong>Privacy Notice</strong></strong></h1>\r\n\r\n<p><em>We&rsquo;ve included annotations in these gray boxes as a guide to our notices. Annotations aren&rsquo;t part of the notices and have no legal effect, but they should help you follow the text.<br />\r\n<br />\r\nIf you are a Paycoo customer, this privacy notice applies to you. It explains what data we collect about you, what we do with it, when and why we share it with others, how long we keep it, how we secure it, what cookies are and what they (and similar technologies) do, what data is collected about you by third party service providers, and what choices you have to control your data.<br />\r\n<br />\r\nBy using Paycoo you consent to these data practices.</em></p>\r\n\r\n<p>This Privacy Notice describes how Paycoo collect, use, disclose, transfer, store, retain or otherwise process your information when you (&ldquo;you,&rdquo; &ldquo;your&rdquo;) download Paycoo through a relevant app store and sign up for a Paycoo account and other services through the app or online at https://Paycoo.app/ (collectively, &ldquo;Services&rdquo;).</p>\r\n\r\n<p>This Privacy Notice applies to your use of our Services, and covers only information collected in connection with your access to and use of our Services. Please read this Privacy Notice carefully. By continuing to interact with our Services, you are consenting to the practices described in this Privacy Notice.</p>\r\n\r\n<h3>INFORMATION WE COLLECT ABOUT YOU</h3>\r\n\r\n<p><em>We use your data to make Paycoo&rsquo;s products and services work better for you and for others. This describes what data we get about you (which can vary depending on where you live).</em></p>\r\n\r\n<p>We need to collect information about you to provide you with the Services or the support you request. Specifically, we collect (and/or have collected during at least the 12-month period preceding the effective date of this Privacy Notice) the categories of personal information described below. Additionally, you can choose to voluntarily provide information to us.</p>\r\n\r\n<p><strong>Information You Provide to Access our Services</strong></p>\r\n\r\n<p><em>We use data you put into our systems when you use Paycoo, like financial information, information that identifies who you are, transaction information, and any other data you give us.</em></p>\r\n\r\n<p>We collect information you provide when you apply or sign up for a Paycoo account, go through our identity or account verification process, authenticate into your account, communicate with us, answer our surveys, participate in contests or promotions offered by us or our partners, or otherwise use our Services.</p>\r\n\r\n<p>We collect the following categories of information about you when you use our Services, including:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li><strong>Identification Information.</strong>&nbsp;such as: Your name, email address, zip code, phone number, Paycoo username, signature, and authentication credentials (for example, information you use to log in to your Paycoo account), including Internet Protocol (&ldquo;IP&rdquo;) address.</li>\r\n	<li><strong>Additional Identification Information for Verified Users.</strong>&nbsp;such as: Your full mailing address; date of birth; government-issued identification, including Social Security number, passport, or driver&rsquo;s license;</li>\r\n	<li><strong>Financial Information.</strong>&nbsp;such as: Bank account and payment card numbers you add to your Paycoo account, as well as your Paycoo Card number if you have one.</li>\r\n	<li><strong>Contacts Information.</strong>&nbsp;In order to provide you with the Service, we will also need to collect information from you about the intended recipient of the payment you request us to make. We will therefore ask you to provide contact details of your intended recipient. You can do this by: (a) manually entering a phone number or email address into Paycoo; or (b) as described below (under Information You Provide to Enhance Your Experience), you can choose to give us access to your phone contacts to facilitate the entry of recipient information. We may also ask you to provide limited access to your phone contacts for account verification purposes. You can update your settings to stop sharing your phone contacts with us at any time, although we will always need a recipient&rsquo;s phone number or email address to send money to them as requested by you.</li>\r\n	<li><strong>Transaction Information.</strong>&nbsp;When you use our Services to make, accept, or request payments, we collect information such as: when and where the transactions occur, the names of the transacting parties, a description of the transactions, the payment or transfer amounts, and the devices and payment methods used to complete the transactions.</li>\r\n</ul>\r\n\r\n<p><strong>Information You Provide to Enhance Your Experience</strong></p>\r\n\r\n<p><em>We also use data you give us to make your experience with Paycoo better, like contacts you choose to upload to make it easier for you to exchange money with them.</em></p>\r\n\r\n<p>You can choose to provide us with additional information to improve your user experience when using our Services:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li><strong>Contacts Information.</strong>&nbsp;If you choose to give us access to your phone contacts, we collect the telephone numbers of all your phone contacts to facilitate the entry of payment recipient information. You can update your settings to share your phone contacts with us at any time, although we will always need a recipient&rsquo;s phone or email address to send money to them as requested by you.</li>\r\n	<li><strong>Other Information You Provide.</strong>&nbsp;We collect information that you voluntarily provide to us, including your photograph, if you choose to upload a picture to the Services; survey responses; participation in contests, or other prospective marketing forms or devices; suggestions for improvements; referrals; or any other actions you perform on the Services.</li>\r\n</ul>\r\n\r\n<p><strong>Information We Collect From Your Use of our Services</strong></p>\r\n\r\n<p><em>We also get data from the devices you use when you interact with our systems, like your location and information about the device you&rsquo;re using. We need this data to do things like help protect your account from hackers, combat fraud, check if payments are being made or received legally and by you, and making our products and services better for you and others.</em></p>\r\n\r\n<p>We collect information about you and the devices you use to access the Services, such as your computer, mobile phone, or tablet. The information that we collect includes:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li><strong>Geolocation Information.</strong>&nbsp;The location of your device, including your IP address, device language, and location of your network provider. For more information and to learn how to disable collection of location information from your mobile device, please see below.</li>\r\n	<li><strong>Device Information.</strong>&nbsp;Information about your device, including your hardware model, operating system and version, device name, unique device identifier, mobile network information, and information about the device&rsquo;s interaction with our Services. If you use an iOS device, we also automatically detect if you have downloaded Chrome, so we can ask you which browser you prefer to use to open links from your Paycoo application.</li>\r\n	<li><strong>Internet or other electronic network activity information.</strong>&nbsp;Information about how you use and interact with our Services, including your access time, &ldquo;log-in&rdquo; and &ldquo;log-out&rdquo; information, browser type and language, country and language setting on your device, IP address, the domain name of your internet service provider, other attributes about your browser, mobile device and operating system, any specific page you visit on our platform, content you view, features you use, the date and time of your use of the Services, your search terms, and the website you visited before you visited or used the Services.</li>\r\n	<li><strong>Inferences</strong>&nbsp;drawn from any of the information we collect to create a profile about you that may reflect, for example, your preferences, characteristics, and behavior, including for account security purposes or to enhance our Services to you.</li>\r\n</ul>\r\n\r\n<p><strong>SOURCES OF INFORMATION WE COLLECT ABOUT YOU</strong></p>\r\n\r\n<p><em>We also need to check that you are using our services legally, that you are eligible for the services you want to use, and we protect your data and our services from fraudsters who may put you and your money at risk. To do this, we may collect data about you from companies that help us verify your identity, do a credit check, prevent fraud or assess risk.</em></p>\r\n\r\n<p>We collect (and/or have collected during at least the 12-month period preceding the effective date of this Privacy Notice) information about you from the following categories of sources:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>You directly, when you submit information to us or allow us to access information</li>\r\n	<li>Your devices and how you interact with our Services</li>\r\n	<li>Our group companies or affiliates</li>\r\n	<li>Other sources, including:</li>\r\n	<li><strong>Identity Verification.</strong>&nbsp;Information from third-party verification services (e.g., identity verification agencies and through companies which provide third party analytics (see &ldquo;Third-Party Analytics&rdquo; below)), and publicly available sources. In some circumstances, where lawful, this information can include your government-issued identification number.</li>\r\n	<li><strong>Credit, Compliance, and Fraud.</strong>&nbsp;Information about you from third parties for any credit investigation, credit eligibility, identity or account verification process, fraud detection process, or collection procedure, or as may otherwise be required by applicable law. This includes, without limitation, the receipt and exchange of account or credit-related information with any credit reporting agency or credit bureau, where lawful, and any person or corporation with whom you have had, currently have, or may have a financial relationship, including without limitation past, present, and future places of employment, financial institutions, and personal reporting agencies.</li>\r\n</ul>\r\n\r\n<h3>HOW WE USE YOUR INFORMATION</h3>\r\n\r\n<p><em>We use your data to do things like make sure the products you are using work, help you log in to your account, verify who you are, secure your data, fight fraud, follow the law, enforce our agreements, figure out what new products we can build, and market and tailor our products to you.</em></p>\r\n\r\n<p>We may collect, use and share (or have collected, used or shared during at least the 12-month period preceding the effective date of this Privacy Notice), information about you for the following reasons:</p>\r\n\r\n<p><strong>Providing, Improving, and Developing our Services</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Determining whether the Services are available in your country;</li>\r\n	<li>Processing or recording payment transactions or money transfers;</li>\r\n	<li>Providing you with Paycoo products and features you choose to use;</li>\r\n	<li>Displaying your historical transaction information;</li>\r\n	<li>Connecting you with people you already know;</li>\r\n	<li>Providing, maintaining and improving our Services;</li>\r\n	<li>Developing new products and services;</li>\r\n	<li>Delivering the information and support you request through the use of our Services;</li>\r\n	<li>Improving, personalizing and facilitating your use of our Services, content and applications;</li>\r\n	<li>Measuring, tracking and analyzing trends and usage in connection with your use or the performance of our Services; and</li>\r\n	<li>Otherwise providing you with the products and features you choose to use.</li>\r\n</ul>\r\n\r\n<p><strong>Communicating with You About our Services</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Sending you surveys and getting your feedback about our Services; and</li>\r\n	<li>Sending you information we think you may find useful or which you have requested from us about our products and services.</li>\r\n</ul>\r\n\r\n<p><strong>Protecting our Services and Maintaining a Trusted Environment</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Conducting investigations, complying with and enforcing any applicable laws, regulations, legal requirements, and industry standards, and responding to lawful requests for information from the government or to valid legal process;</li>\r\n	<li>Contacting you to resolve disputes, collect fees and help you with our Services;</li>\r\n	<li>Debugging to identify and fix errors that impair how our Services function;</li>\r\n	<li>Making sure you follow our Terms of Service or other applicable agreements or policies;</li>\r\n	<li>Investigating, detecting, preventing, recovering from, or reporting fraud, misrepresentations, security breaches or incidents, other potentially prohibited, malicious, or illegal activities, or to otherwise help protect your account, including to dispute chargebacks on your behalf;</li>\r\n	<li>Protecting your, our, or our other customers&rsquo; rights or property, or the security or integrity of our Services;</li>\r\n	<li>Verifying or maintaining the quality and safety of our Services; and</li>\r\n	<li>Verifying your identity (e.g., through government-issued identification numbers).</li>\r\n</ul>\r\n\r\n<p><strong>Advertising and Marketing</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Marketing our Services to you; and</li>\r\n	<li>Communicating with you about opportunities, products, services, contests, promotions, discounts, incentives, surveys, and rewards offered by us and select partners.</li>\r\n</ul>\r\n\r\n<p>If we send you marketing emails, each email will have instructions on how you can &ldquo;opt out&rdquo; of getting future marketing from us.</p>\r\n\r\n<p><strong>Other Uses</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>For any other reason we may tell you about from time to time.</li>\r\n</ul>\r\n\r\n<h3>WHEN AND WITH WHOM WE SHARE YOUR INFORMATION</h3>\r\n\r\n<p><em>We share your information with others in the circumstances described in this section. For example, with other people with whom you interact when you use our services; who may offer services that we think could be useful to you; with service providers who help us run our services; or if we need to share your information to comply with the law.</em></p>\r\n\r\n<p>We may share the information described in the &ldquo;Information We Collect About You&rdquo; section with the following categories of service providers and third parties:</p>\r\n\r\n<p><strong>With Other Users of our Services with Whom You Interact</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>With other users of our Services with whom you interact through your own use of our Services. For example, we may share information with the person(s) with whom you transact when you make or accept a payment or money transfer using our Services. This helps them know they&rsquo;re getting money from you (or that you requested a payment from them).</li>\r\n</ul>\r\n\r\n<p><strong>With our Service Providers</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>With service providers who help us provide, maintain, and improve our Services (e.g., vendors who help us with fraud prevention, identity verification, and fee collection services), as well as financial institutions, payment networks, payment card associations, credit bureaus, carrying brokers, and other entities in connection with your payment, money transfer process, investing activity, or otherwise to help us provide the Services;</li>\r\n	<li>With service providers that help us run our advertising campaigns, contests, special offers, or other events or activities.</li>\r\n</ul>\r\n\r\n<p><strong>Business Transfers and Corporate Changes</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>To a subsequent owner, co-owner, or operator of one or more of the Services; or</li>\r\n	<li>If we do or try to do a corporate merger, consolidation, or restructuring (including during due diligence and negotiation of these); the sale of substantially all of our stock and/or assets; the financing, acquisition, divestiture, or dissolution of all or a portion of our business; or other corporate change.</li>\r\n</ul>\r\n\r\n<p><strong>Safety and Compliance with Law</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>If we believe that disclosure is reasonably necessary (i) to comply with any applicable law, regulation, legal process or governmental request (e.g., from creditors, tax authorities, law enforcement agencies, in response to a garnishment, levy, or lien notice, etc.); (ii) to establish, exercise or defend our legal rights; (iii) to enforce or comply with our General Terms or other applicable agreements or policies; (iv) to protect our or our customers&rsquo; rights or property, or the security or integrity of our Services; (v) for an investigation of suspected or actual illegal activity; or (vi) to protect us, users of our Services or the public from harm, fraud, or potentially prohibited or illegal activities.</li>\r\n</ul>\r\n\r\n<p><strong>With Your Consent</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>With your consent. For example:\r\n	<ul style=\"list-style-type:circle\">\r\n		<li>At your direction or as described at the time you agree to share;</li>\r\n		<li>When you authorize a third party application or website to access your information.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>With Others</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>With other companies who deliver services on our behalf, including via the use of cookies and similar automated technologies, and third party analytics.</li>\r\n</ul>\r\n\r\n<p>Aggregated and Anonymized Information</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>We also may share (with service providers or other third parties) aggregated and anonymized information that does not specifically identify you or any individual user of our Services.</li>\r\n</ul>\r\n\r\n<h3>COOKIES AND OTHER SIMILAR AUTOMATED TECHNOLOGIES</h3>\r\n\r\n<p><em>Digital cookies and similar technologies help us make our services better to use by doing things like recognizing when you&rsquo;ve signed in, analyzing how you use our services so we can make them more useful to you, giving you a more personalized experience, and making our ads to you work better.</em></p>\r\n\r\n<p>When you interact with our online services, or open emails we send you, we obtain certain information using automated technologies, such as cookies, web server logs, web beacons, and other technologies. A &ldquo;cookie&rdquo; is a text file that websites send to a visitor&rsquo;s computer or other internet-connected device to uniquely identify the visitor&rsquo;s browser or to store information or settings in the browser. A &ldquo;web beacon,&rdquo; also known as an internet tag, pixel tag, or clear GIF, is a tiny graphic image that may be used in our websites or emails.</p>\r\n\r\n<p>We use these automated technologies to collect your device information, internet activity information, and inferences as described above. These technologies help us to:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Remember your information so you do not have to re-enter it;</li>\r\n	<li>Track and understand how you use and interact with our online services and emails;</li>\r\n	<li>Tailor our online services to your preferences;</li>\r\n	<li>Measure how useful and effective our services and communications are to you; and</li>\r\n	<li>Otherwise manage and enhance our products and services.</li>\r\n</ul>\r\n\r\n<p>We set some of these automated technologies ourselves, but others are set by third parties who deliver services on our behalf. For example, we may use other companies&rsquo; web analytics services (described in the &ldquo;Third-Party Analytics Services&rdquo; section), which use automated technologies to help us evaluate how customers use of our websites.</p>\r\n\r\n<p>Your browser can alert you when cookies are placed on your device, and how you can stop or disable them via your browser settings. Please note, however, that without cookies all of the features of our online services may not work properly. If you use a mobile device, you can manage how your device and browser share certain device data by changing the privacy and security settings on your mobile device. You can learn more about cookies and how to manage your preferences by visiting http://www.allaboutcookies.org.</p>\r\n\r\n<h3>THIRD-PARTY ANALYTICS SERVICES</h3>\r\n\r\n<p><em>We use other companies as service providers to help us analyze our site, and track metrics. These service providers generally promised us under contract to keep data private but have their own privacy policies that you should be aware of.</em></p>\r\n\r\n<p>We may use third-party analytics service providers to help us with our online services, such as Google Analytics, Adjust, Facebook Analytics, Firebase Analytics, Amplitude, Mixpanel and Crashlytics. The analytics providers that administer these services use technologies such as cookies, web beacons, and web server logs to help us analyze how you use our online services. We may disclose your site-use information (including IP address) to these analytics providers, and other service providers who use the information to help us figure out how you and others use our online services.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>To learn more about Google Analytics and how to opt out, please visit https://marketingplatform.google.com/about/ or https://support.google.com/analytics/answer/181881?hl=en.</li>\r\n	<li>To learn more about Adjust, please visit https://www.adjust.com/terms/privacy-policy/.</li>\r\n	<li>To learn more about Facebook Analytics, please visit https://www.facebook.com/policy.php.</li>\r\n	<li>To learn more about Firebase Analytics, please visit https://firebase.google.com/support/privacy.</li>\r\n	<li>To learn more about Amplitude, please visit https://amplitude.com/amplitude-security-and-privacy.</li>\r\n	<li>To learn more about Mixpanel, please visit https://mixpanel.com/legal/privacy-policy/.</li>\r\n	<li>To learn more about Crashlytics, please visit https://fabric.io/terms.</li>\r\n</ul>\r\n\r\n<h3>HOW LONG WE KEEP YOUR INFORMATION</h3>\r\n\r\n<p><em>We keep your information as long as you keep using our products and services. After that, we keep it for as long as we need it to do things like fight fraud, collect fees you owe, resolve disputes with (or involving) you, follow the law, enforce our agreements and defend our rights in court.</em></p>\r\n\r\n<p>We generally keep your information as long as reasonably necessary to provide you the Services or to comply with applicable law. However, even after you deactivate your account, we can retain copies of information about you and any transactions or Services in which you may have participated for a period of time that is consistent with applicable law, applicable statute of limitations or as we believe is reasonably necessary to comply with applicable law, regulation, legal process, or governmental request, to detect or prevent fraud, to collect fees owed, to resolve disputes, to address problems with our Services, to assist with investigations, to enforce our General Terms or other applicable agreements or policies, or to take any other actions consistent with applicable law.</p>\r\n\r\n<h3>YOUR CHOICES</h3>\r\n\r\n<p><em>You can see, change or fix information you gave us, ask us to deactivate your account, control your location information, or tell us to stop marketing to you by opting out.</em></p>\r\n\r\n<p><strong>Personal Information</strong></p>\r\n\r\n<p>You can access, change, or correct information that you have provided by logging into your Paycoo account at any time or by making a request to us using the contact details below. We will need to verify your identity before granting access or otherwise changing or correcting your information.</p>\r\n\r\n<p><strong>Deactivating Your Account</strong></p>\r\n\r\n<p>If you wish to deactivate your account, you can do so at any time by logging into your Paycoo account</p>\r\n\r\n<p>If you would like to have your account closed permanently, please contact customer support through Paycoo application.</p>\r\n\r\n<p><strong>Location Information</strong></p>\r\n\r\n<p>In order to provide certain Services, we may require access to location information, including precise geolocation information collected from your device. If you do not consent to collection of this information, certain Services will not function properly and you will not be able to use those Services. You can stop our collection of location information at any time by changing the preferences on your mobile device. If you do so, some of our mobile applications will no longer function. You also may stop our collection of location information via mobile application by following the standard uninstall process to remove Paycoo mobile applications from your device.</p>\r\n\r\n<p><strong>Do Not Track</strong></p>\r\n\r\n<p>Certain web browsers allow you to instruct your browser to respond to Do Not Track (&ldquo;DNT&rdquo;) signals to website you visit, informing those sites that you do not want your online activities to be tracked. At this time, our websites are not designed to respond to DNT signals or similar mechanisms from browsers.</p>\r\n\r\n<p><strong>Promotional Communications</strong></p>\r\n\r\n<p>You can opt out of receiving in-app push notifications containing promotional messages from us by following the instructions on screen or by following the instructions in those messages. If you decide to opt out, we may still send you non-promotional communications in-app, or via email and text, such as transaction receipts and messages about your account, or our processing of your information in accordance with the provision of our Services.</p>\r\n\r\n<p><strong>Right of Deletion</strong></p>\r\n\r\n<p>You have the right to ask us to delete the personal information we have collected from you (subject to exceptions the law provides). Please note that you may no longer be able to use our Services if you delete your personal information.</p>\r\n\r\n<p><strong>Right of Non-Discrimination</strong></p>\r\n\r\n<p>You have the right to not be discriminated against if you exercise these privacy rights. We will not discriminate against you, deny, charge different prices for, or provide a different quality of goods or services if you choose to exercise these rights.</p>\r\n\r\n<p><strong>How to Exercise Your Rights</strong></p>\r\n\r\n<p>To help protect your privacy and maintain security, we take steps to verify your identity and will require you to be logged in to your Paycoo account before granting you access to your personal information or complying with your request.</p>\r\n\r\n<p>You may designate an authorized agent to make a request on your behalf as permitted under law, though before we process that request, we will require that you provide the authorized agent written permission to do so and verify your identity directly with us.</p>\r\n\r\n<p>To the extent permitted by applicable law, we may charge a reasonable fee to comply with your request.</p>\r\n\r\n<h3>CHILDREN&rsquo;S PERSONAL INFORMATION</h3>\r\n\r\n<p><em>If you are a kid under 16, please don&rsquo;t use our services. If we collect your data and later learn you are a kid under 16, we will delete it.</em></p>\r\n\r\n<p>Our Services are general audience services not directed at children under the age of 16. If we learn that any information we collect has been provided by a child under the age of 16, we will promptly delete that information.</p>\r\n\r\n<h3>HOW WE SECURE INFORMATION</h3>\r\n\r\n<p><em>We do a lot to keep your data safe. While we think we have strong defenses in place, no one can ever guarantee that hackers won&rsquo;t be able to break into our sites or steal your data while it is stored or flowing from you to us or vice versa.</em></p>\r\n\r\n<p>We take reasonable measures, including administrative, technical, and physical safeguards, to protect your information from loss, theft, and misuse, and unauthorized access, disclosure, alteration, and destruction. Nevertheless, the internet is not a 100% secure environment, and we cannot guarantee absolute security of the transmission or storage of your information. We hold information about you both at our own premises and with the assistance of third-party service providers.</p>\r\n\r\n<h3>STORAGE AND PROCESSING</h3>\r\n\r\n<p><em>We operate in many countries, and we (or our service providers) may move your data and process it outside the country where you live.</em></p>\r\n\r\n<p>We may, and we may use third-party service providers to, process and store your information outside the country where you live.</p>\r\n\r\n<h3>CHANGES TO THIS PRIVACY NOTICE</h3>\r\n\r\n<p><em>We can change this privacy notice. When the changes impact your rights or how we use your data in important ways, we&rsquo;ll tell you first by email (if you&rsquo;ve given us your email address).</em></p>\r\n\r\n<p>We may amend this Privacy Notice from time to time by posting a revised version and updating the &ldquo;Effective Date&rdquo; above. The revised version will be effective on the &ldquo;Effective Date&rdquo; listed. We will provide you with reasonable prior notice of material changes in how we use your information, including by email, if you have provided one. If you disagree with these changes, you may cancel your account at any time. If you keep using our Services, you consent to any amendment of this Privacy Notice.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-03-14 00:19:25');
INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(36, 'terms_and_conditions', '<p><strong>General Terms of Service</strong></p>\r\n\r\n<p>Last updated: January 31, 2022</p>\r\n\r\n<p><em>We&rsquo;ve included annotations in the gray boxes below to emphasize certain portions of our notice and help guide you as you read them. The annotations aren&rsquo;t summaries, so please take the time to read everything!<br />\r\n<br />\r\nThis page explains our terms for Paycoo. By using the service you agree to these terms. If you use the service on behalf of your company, your company agrees to them too.</em></p>\r\n\r\n<p>These Additional Paycoo Terms of Service (the &ldquo;Paycoo Terms&rdquo;) govern your use of Paycoo, a payment service and financial platform (the &ldquo;Service&rdquo;) offered by Paycoo, Inc. (&ldquo;Paycoo&rdquo;, &ldquo;we&rdquo;, &ldquo;our,&rdquo; or &ldquo;us&rdquo;). By using the Service you agree to be bound by these Paycoo Terms, the General Terms of Service (&ldquo;General Terms&rdquo;) and all other terms and policies applicable to each Service as set forth below. If you are using the Service on behalf of a business or entity, you acknowledge and agree that you have authority to bind such business or entity and that such business or entity accepts these terms.</p>\r\n\r\n<p><strong>I. Eligibility</strong></p>\r\n\r\n<p><em>Using Paycoo requires you open an account. You&rsquo;ll need to be an Egyptian resident and at least 16 years old. If you want to use your account balance to send money to another Paycoo user, then you&rsquo;ll need to give us some more information about you, and we&rsquo;ll need to be able to verify your identity.</em></p>\r\n\r\n<p>Issuance of cards is limited to Egyptian natural persons &ldquo;Egyptian individuals only&rdquo; from the age of 16 years. The use and availability of some features is limited to the Arab Republic of Egypt. The customer/user must complete the subscription steps and provide the data and documents required to enable some features of the application, such as sending money from a subscriber in the application to another subscriber in the application from the &ldquo;Paycoo X Banque Du Caire&ldquo; card holders according to the available balance on the card. The customer/user must sign a &ldquo;manual signature&ldquo; on the form for subscribing to the service of issuing prepaid cards and link the &ldquo;Cairo X Paycoo&ldquo; card on the company&rsquo;s mobile application.</p>\r\n\r\n<p><strong>II. Paycoo Account and Communication</strong></p>\r\n\r\n<p><strong>1. Paycoo Account</strong></p>\r\n\r\n<p><em>Here&rsquo;s the part where you tell us you own the email or phone number you registered with and that the personal information you provide to us is correct. You agree to cooperate with us so that we can verify your identity. We might use third parties to help us do so.</em></p>\r\n\r\n<p>The customer/user acknowledges the validity of the data and information included in the application for electronic services, and the customer bears any responsibility that results in the event that any of these data or information is incorrect.</p>\r\n\r\n<p>Paycoo Cards Service: It is a prepaid card issued through the Banque Du Caire under the MasterCard Foundation, and it is requested after entering some data through the Paycoo mobile application, as well as the services, transactions and facilities provided by the bank to its customers that change from time to time through the mobile application - will be announced continuously through various channels.</p>\r\n\r\n<p>The application may require the customer/user to provide some personal information and data, such as, but not limited to, name, address, e-mail, mobile phone number etc., in order to open, register, use or update the account.</p>\r\n\r\n<p>When opening the account for the first time through the application, it will be &ldquo;limited&rdquo; .. the customer / user is allowed to access the application only. The customer / user will not be able to perform any transactions including payment / transfer to another client from Paycoo.</p>\r\n\r\n<p>The application may ask the customer/user to authenticate the account with some additional information. If the account cannot be verified, the user may be prompted to create a new account.</p>\r\n\r\n<p>The customer/user directly authorizes Banque du Caire and Paycoo hereby to make any inquiries to verify and authenticate your/account information. This may include asking for more information or documentation about account use, or requiring steps to confirm ownership of an address, e-mail or mobile phone number for example, to verify information against third party databases or through other sources.</p>\r\n\r\n<p>The customer/user is solely responsible for the correctness of all data, information and operations that he enters through the application, as he is the only user of the service. He also acknowledges that the instructions, data and transactions that he enters during dealing through the service are dealt with without any additional review from the bank, and the bank/company does not bear any responsibility to the customer in the event of an error in any data entered on the app.</p>\r\n\r\n<p>With regard to the use of the service, the customer/user may not refuse the following:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Cooperate in an investigation of an activity that is likely to violate the law or the Terms of Service</li>\r\n	<li>Verify any information he enters through the application as the sole user of the service</li>\r\n</ul>\r\n\r\n<p>The bank has the right to reject any subscription application submitted by the client to obtain the &ldquo;Paycoo X Banque Du Caire&rdquo; card, and it also has the right to refuse to implement any instructions, inquiries, transactions or operations received from the client while using the service, provided that the customer is notified of this and informed of the reasons, if possible.</p>\r\n\r\n<p><strong>2. Receipts and Account Statements</strong></p>\r\n\r\n<p>Receipts for some transactions made with the card are obtained through the application on the Home Section, as well as the balance statement through customer support in the Paycoo application.</p>\r\n\r\n<p>Transactions are found and monitored in the main section of your Paycoo application.</p>\r\n\r\n<p><strong>3. Error Resolution</strong></p>\r\n\r\n<p><em>Contact us if you see any errors or issues with your account. Our contact info is below, along with a description of the process and timeline for us to look into your issue. We&rsquo;ll need some basic information from you to begin our investigation.</em></p>\r\n\r\n<p>The customer/user has the right to contact customer service through the Paycoo application support@Paycoo.app in the event of an error on the account or for inquiries.</p>\r\n\r\n<p>In case of errors or questions about your account contact our customer support on Paycoo application, please note a Paycoo representative will never ask you for your password, PIN, social security number or full debit card number. Or send us at support@Paycoo.app as soon as you can if you think an error has occurred in your Account. We must allow you to report an error until 60 days after the date you electronically access your Account, if the error could be viewed in your electronic history. In order for us to assess the situation, you will need to tell us:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Your name and Account number;</li>\r\n	<li>Why you believe there is an error, and the EGP (Egyptian pounds) amount involved; and</li>\r\n	<li>Approximately when the error took place.</li>\r\n</ul>\r\n\r\n<p>If you tell us orally, we may require that you send us your complaint or question in writing within 10 business days. We will determine whether an error occurred within 10 business days after we hear from you and will correct any error promptly. If we need more time however, we may take up to 45 days to investigate your complaint or question.</p>\r\n\r\n<p>For errors involving new Accounts, as well as point-of-sale transaction, we may take up to 90 days to investigate your complaint of question. We will tell you the results within three business days after completing our investigation. If we decide that there was no error, we will send you a written explanation. You may ask for copies of the documents that we used in our investigation. If you need more information about our error-resolution procedures, contact us at support@Paycoo.app, please note a Paycoo representative will never ask you for your password, PIN, social security number or full debit card number.</p>\r\n\r\n<p>In the absence of an error, the reasons will be explained, and the customer/user has the right to request copies of the documents that were used in the investigation through the application.</p>\r\n\r\n<p>For purposes of these disclosures, our business days are Sunday through Thursday. Holidays are not included.</p>\r\n\r\n<p><strong>4. Your Liability for Unauthorized Transactions</strong></p>\r\n\r\n<p><em>Contact us as soon as possible if you think there has been unauthorized activity on your account. Depending on the circumstances, if an unauthorized transaction has occurred we may be able to cover you.</em></p>\r\n\r\n<p>Please let us know if you believe there is an Unauthorized Transaction on your Account. You could lose all the money in your Account.</p>\r\n\r\n<p>We will protect you from Unauthorized Transactions in your Account. When this protection applies, we will cover you for the full amount of the Unauthorized Transaction, so long as we were able to complete the Error Resolution procedures described above.</p>\r\n\r\n<p>An &quot;Unauthorized Transaction&quot; occurs when money is sent from your Account that you did not authorize and that did not benefit you. For example, if someone steals your password, uses the password to access your Account, and sends a payment from your Account, an Unauthorized Transaction has occurred. However, the following are NOT considered Unauthorized Transactions:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>If you give someone access to your Account (e.g. by giving them your login information) and they use your Account without your knowledge or permission;</li>\r\n	<li>If you, or someone else with whom you are acting in concert, act with fraudulent intent; or</li>\r\n	<li>You reverse engineer or chargeback a transaction made with your Paycoo Card.</li>\r\n</ul>\r\n\r\n<p><strong>5. Our Liability</strong></p>\r\n\r\n<p><em>We will cover your losses for certain incomplete or incorrect transactions, detailed here.</em></p>\r\n\r\n<p>If we do not complete a transaction to or from your Account on time or in the correct amount according to these Paycoo Terms, we will be liable for your losses or damages. However, there are some exceptions. We will not be liable, for instance:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>If, through no fault of ours, you have insufficient funds in your Account to complete the transaction;</li>\r\n	<li>If the ATM where you are making the Transaction or using your Paycoo Card does not have enough cash;</li>\r\n	<li>If Paycoo was not working properly and you knew about the breakdown when you started the transaction;</li>\r\n	<li>If circumstances beyond our control (such as fire or flood) prevent the transaction, despite reasonable precautions that we have taken.</li>\r\n</ul>\r\n\r\n<p><strong>6. Funding Sources Used for Payments Made Through the Service</strong></p>\r\n\r\n<p><em>You may link an Eligible Bank Account to your Paycoo to fund payments made through the Service. Paycoo reserves the right to limit which banks or what types of accounts constitute an Eligible Bank Account.</em></p>\r\n\r\n<p>When you initiate a payment through Paycoo, if you have a Restricted Account, then you will not be able to initiate payments to other Paycoo users with your Paycoo Balance. If you have a Restricted Account and you wish to make a payment to another Paycoo customer, you may: (1) use an Eligible Bank Account or Eligible Credit Account; or (2) upgrade to an Unrestricted Account to make the payment with your Paycoo Balance.</p>\r\n\r\n<p>If you have an Unrestricted Account and have sufficient funds in your Paycoo Balance to satisfy the full payment amount you can complete the payment through your Paycoo Balance.</p>\r\n\r\n<p><strong>7. Paycoo Username</strong></p>\r\n\r\n<p><em>You may choose a unique username for Paycoo, which will be your &ldquo;Paycoo Username.&rdquo; If you choose a Paycoo Username that turns out to be too confusing or deceptive, we might require you to change it.</em></p>\r\n\r\n<p>You may select a unique alpha-numeric name to identify yourself on the Service (a &ldquo;Paycoo Username&rdquo;). Your Paycoo Username must accurately and truthfully represent your business or personal identity. You may not select a Paycoo Username that misleads or deceives others as to your identity or creates an undue risk of chargebacks or mistaken payments. We may require you to change your Paycoo Username or details of your Account Information in our sole discretion, and we may reclaim or make unavailable Paycoo Username without liability to you.</p>\r\n\r\n<p><strong>8. Sharing of Your Information</strong></p>\r\n\r\n<p>We will share Account Information and transaction information, including your name, the amount, and a description, with the other party to your transaction and in accordance with our Privacy Policy.</p>\r\n\r\n<p><strong>9. Text Messages</strong></p>\r\n\r\n<p><em>Here&rsquo;s where we describe your consent to receive texts from us and your representations regarding texts we send to others relating to your payments.</em></p>\r\n\r\n<p>By providing us with a mobile number, you consent to receiving text (SMS) messages from us. If you provide us with the mobile number of any other person or entity when initiating or requesting a payment through the Service, you represent and warrant to us that the person or entity has consented to receive text messages from us related to that payment. Standard text messaging rates may apply based on your plan with your mobile carrier.</p>\r\n\r\n<p><strong>10. Paycoo Fees</strong></p>\r\n\r\n<p>We reserve the right to charge for or change the fees associated with the use of the Paycoo at any time subject to these Paycoo Terms and/or in accordance with the terms and conditions of Banque du Caire that follow the rules of the Central Bank of Egypt. A fee may be imposed by Paycoo or an ATM operator for use of the Paycoo Card at an ATM, including for a balance inquiry, and by any network used to complete the ATM transaction.</p>\r\n\r\n<p><strong>III. Paycoo Balance</strong></p>\r\n\r\n<p><strong>1. General</strong></p>\r\n\r\n<p><em>By initiating transactions from your linked bank account or debit card, you are authorizing us to debit those sources. If we incur costs because you have insufficient funds in your account, you will cover those costs.</em></p>\r\n\r\n<p>a.&nbsp;<strong>Functionality.</strong>&nbsp;Your balance consists of the funds you have in your Account that are available for new transactions and are not subject to pending transactions (your &ldquo;Paycoo Balance&rdquo;). You are solely responsible for all funds necessary to complete any payments initiated through the Service. You agree to reimburse Paycoo for any fees, costs, or expenses it incurs as a result of insufficient or unavailable funds in connection with any payment you initiate through the Service.</p>\r\n\r\n<p>b.&nbsp;<strong>Authorization.</strong>&nbsp;By instructing us through Paycoo to add funds from an Eligible Bank Account or Direct Deposit (both defined below) or debit card to your Paycoo Balance or make any other transfer you authorize us to debit such Eligible Bank Account or debit card for the amount instructed, either in a single or recurring transaction, as applicable.</p>\r\n\r\n<p>c.&nbsp;<strong>Limitations.</strong>&nbsp;Paycoo/Banque Du Caire may impose limits on the amount you can keep in your Paycoo Balance and reserves the right to change these limits at any time. Funds in your Paycoo Balance might not be available to use for all types of transactions. If you have a Restricted Account, then you may not use your Paycoo Balance to make payments to other Paycoo users unless you first upgrade to an Unrestricted Account.</p>\r\n\r\n<p><strong>2. Funding Your Paycoo Balance</strong></p>\r\n\r\n<p><em>There are several ways you can add funds to your Paycoo balance. Each method is described here.</em></p>\r\n\r\n<p>a.&nbsp;<strong>ACH Transfers.</strong>&nbsp;ACH Transfer from any account from Banque du Caire/or another bank to your Paycoo account</p>\r\n\r\n<p>b.&nbsp;<strong>P2P Payments Received Through Paycoo.</strong>&nbsp;You can keep funds received from P2P Payments (defined below) made to you through Paycoo in your Paycoo Balance.</p>\r\n\r\n<p>c.&nbsp;<strong>Access to Funds.</strong>&nbsp;Certain funding features may be unavailable or delayed from time to time due to risk-based restrictions, scheduled maintenance, changes to our Services, unforeseen circumstances, or outages.</p>\r\n\r\n<p><strong>3. Treatment of Funds</strong></p>\r\n\r\n<p><em>Paycoo will not mix your funds with Paycoo&rsquo;s corporate funds. Your funds will be held in pooled bank accounts with the funds of other Paycoo customers.</em></p>\r\n\r\n<p>If you do hold funds in your Paycoo Balance, Paycoo will hold such funds separate from its corporate funds, will not use your funds for any corporate purposes, nor will Paycoo voluntarily make your funds available to its creditors in the event of bankruptcy. Paycoo will combine your funds with the funds of other users and place those pooled accounts in one or more bank accounts in Paycoo&rsquo;s name.</p>\r\n\r\n<p><strong>4. Interest</strong></p>\r\n\r\n<p><em>You will not receive interest on the funds that you have in your stored balance.</em></p>\r\n\r\n<p>You agree that you will not receive interest on or other monies derived from the funds that Paycoo handles and places in pooled accounts. It is likely that Paycoo will receive interest on funds held for its users. In consideration for your use of the Service, and with full knowledge and understanding that Paycoo will receive this interest, you irrevocably transfer and assign to Paycoo all right that you may have in any interest that may accrue on funds held in pooled accounts.</p>\r\n\r\n<p><strong>IV. Peer to Peer Service</strong></p>\r\n\r\n<p><strong>1. Description Of Service</strong></p>\r\n\r\n<p>The peer-to-peer Service (&ldquo;Peer-to-Peer Service&rdquo;) allows you to send funds or receive funds for peer-to-peer personal, non-commercial purposes.</p>\r\n\r\n<p><strong>2. Sending Funds</strong></p>\r\n\r\n<p><em>You will be able to send funds using our P2P service if you have a linked bank account or linked a credit card. If you have an Unrestricted Account you will also be able to send funds using our P2P service if you have funds available in your balance. You authorize us to move funds on your behalf. We won&rsquo;t be responsible for certain incomplete transactions, as described here.</em></p>\r\n\r\n<p>Once you have opened an Account and either have funds available in an Eligible Transaction Account or linked a credit card issued by an Egypt.-based bank or financial institution bearing the trademark of Visa, or MasterCard, you will be able to send funds using the Peer-to-Peer Service. Note that your Paycoo Balance will not be an &ldquo;Eligible Transaction Account&rdquo; until you have given us certain information and we have verified your identity, as set forth above. This means that until (a) you give us this information (b) we verify your identity and (c) you have an Unrestricted Account, you will not be able to use the Paycoo Balance to send funds using the Peer-to-Peer Service. Your Paycoo Balance is an &ldquo;Eligible Transaction Account&rdquo; only if you have an Unrestricted Account. With a Restricted Account, you may send funds with the Peer-to-Peer Service using an Eligible Credit Account or an Eligible Bank Account.</p>\r\n\r\n<p>As a party initiating a transfer (&ldquo;Sender&rdquo;), you will send funds to your selected recipient (&ldquo;Recipient&rdquo;) by designating the Recipient and the transfer amount to us (a &ldquo;Payment Instruction&rdquo;). Your Payment Instruction authorizes us to move funds from your Eligible Transaction Account or Eligible Credit Account to your designated Recipient (a &ldquo;P2P Payment&rdquo;). By submitting a Payment Instruction, you are also authorizing us to move funds to your applicable Eligible Transaction or applicable Eligible Credit Account for P2P Payments that are canceled or otherwise returned.</p>\r\n\r\n<p>You understand and agree that when you initiate a P2P Payment Instruction using the Service, the processing of the Payment Instruction will begin, and funds will leave your Eligible Transaction Account, as early as the moment of the initiation of such Payment Instruction. However, we will only begin to process the requested transfer of funds to the Recipient once the Recipient has provided all required information, and you hereby authorize and direct us to retain such funds until the earlier of such time as the Recipient has provided all required information or fourteen (14) days.</p>\r\n\r\n<p>You agree that we shall incur no liability if we are unable to complete any transaction because of: (i) insufficient funds in your Eligible Transaction Account or Eligible Credit Account; (ii) malfunction of the Peer-to-Peer Service due to circumstances beyond our control or due to circumstances that you were already aware of at the time you initiated your Payment Instruction; (iii) inaccurate or insufficient Payment Instructions; or (iv) failure of the Recipient to claim the P2P Payment; or (v) either you or the Recipient does not provide us with any information that we request, or we are unable to verify your identity or the identity of the Recipient to our satisfaction.</p>\r\n\r\n<p><strong>3. Requesting Funds</strong></p>\r\n\r\n<p>You may also request funds to be transferred to you through the Peer-to-Peer Service by designating the amount of funds requested and your selected Sender (a &ldquo;Paycoo Request&rdquo;). If the Sender approves your Paycoo Request, your Paycoo Request will become the Sender&rsquo;s Payment Instructions and be processed as described in these Paycoo Terms.</p>\r\n\r\n<p><strong>4. Receiving Funds</strong></p>\r\n\r\n<p>Any P2P Payment you receive via the Peer-to-Peer Service will be stored in your Paycoo Balance.</p>\r\n\r\n<p><strong>5. Peer-to-Peer Service Fees</strong></p>\r\n\r\n<p><em>Sending money to others through our P2P service is currently free, but we can charge fees in the future.</em></p>\r\n\r\n<p>There are currently no fees for sending funds via an Eligible Transaction Account using the Peer-to-Peer Service. The fee for sending funds using an Eligible Credit Account through Peer-to-Peer Service will be displayed at the time of the transaction. We reserve the right to charge for or change the fees associated with use of the Peer-to-Peer Service at any time subject to these Paycoo Terms.</p>\r\n\r\n<p><strong>6. Payment Cancellation, Stop Payment Requests and Refused Payments</strong></p>\r\n\r\n<p>Our ability to stop a P2P Payment Instruction or recover funds associated with an unauthorized Payment Instruction will depend on how the Payment Instruction was initiated, and whether the Payment Instruction has begun processing. P2P Payments not claimed by a Recipient for fifteen (15) days after the processing has begun will be canceled automatically. We will attempt to return any unclaimed, refused, refunded, prohibited, or denied P2P Payment to your Eligible Transaction Account or Eligible Credit Account, as applicable. If we are not able to do so, we may use other reasonable means to return the P2P Payment to you, as permitted by applicable law.</p>\r\n\r\n<p><strong>7. Invalid P2P Payments</strong></p>\r\n\r\n<p><em>If we believe you received a payment that should not have been made for some reason (for example, fraud), you give us permission to reverse that payment. We are not responsible for any payments that you receive, even if you don&rsquo;t know who sent the payment.</em></p>\r\n\r\n<p>If you receive a P2P Payment and we later determine in our sole discretion that the P2P Payment was invalid for any reason, you hereby authorize us to move funds from the applicable Eligible Transaction Account or Eligible Credit Account in an amount equal to the P2P Payment.</p>\r\n\r\n<p>You acknowledge and agree that we will not be liable in any way for any P2P Payments that you may receive, regardless of whether you authorized the Sender to send them to you.</p>\r\n\r\n<p><strong>8. Risk of Fraudulent Transactions</strong></p>\r\n\r\n<p>The Peer-to-Peer Service is a money transmission service. As a result, fraudulent transactions may result in the loss of funds with no recourse.</p>\r\n\r\n<p><strong>V. Paycoo Card</strong></p>\r\n\r\n<p><strong>1. Issuance of the Paycoo Card</strong></p>\r\n\r\n<p><em>We may arrange for a bank to provide you with a virtual or physical Paycoo Card. By using the Paycoo Card, you agree to any additional applicable terms from the issuing bank. We may cancel, repossess or revoke your Paycoo Card at any time.</em></p>\r\n\r\n<p>Paycoo may arrange for an issuing bank to provide you with access to a prepaid payment card under the Paycoo Prepaid Card Program or a debit card under the demand deposit account program (each a &ldquo;Paycoo Card&rdquo;).</p>\r\n\r\n<p>The Paycoo Card may be issued in virtual or physical form. To activate the virtual card, and to request a physical card, you need to follow in-app prompts.</p>\r\n\r\n<p>We reserve the right to reject signatures and card applications for any reason. Prohibited signatures include, but are not limited to, those signatures that depict inappropriate subject matter, the intellectual property rights of others, or an ink-intensive design.</p>\r\n\r\n<p>Once you receive your physical card in the mail you must follow the directions in the mailing to activate your card prior to use. Your personal identification number (&ldquo;PIN&rdquo;) will be the code you set as your Paycoo PIN, and you may reset the PIN in Paycoo. Your physical card may be cancelled, repossessed, or revoked at any time without prior notice at our discretion (including for depicting a prohibited signature) subject to applicable law.</p>\r\n\r\n<p><strong>2. Using the Paycoo Card</strong></p>\r\n\r\n<p><em>You can use your Paycoo Card to make purchases using any available Paycoo balance. You agree we can move funds from your balance to your Paycoo Card for purchases that you make with your Paycoo Card.</em></p>\r\n\r\n<p>Your Paycoo Card may be used to make purchases with a merchant using any available amounts in your Paycoo Balance. Upon activating the Service, you instruct Paycoo to use the available funds in your Paycoo Balance to load your Paycoo Card for making purchases with your Paycoo Card and to transfer the funds from your Paycoo Balance to your Paycoo Card upon receipt of funds into your Paycoo Balance.</p>\r\n\r\n<p><strong>3. Payment Transaction Limits</strong></p>\r\n\r\n<p><em>You agree that you won&rsquo;t make a purchase or transaction in excess of the funds available in your balance and if you do, you agree that we can recover any negative balance.</em></p>\r\n\r\n<p>You can only make transactions using your Paycoo Card to the extent that you have funds in your Paycoo Balance to support those transactions. You agree not to make a purchase or other transaction in excess of the funds available in your Paycoo Balance. If you do make a purchase or other transaction that exceeds the funds available in your Paycoo Balance, you agree that we can recover any negative balance incurred.</p>\r\n\r\n<p><strong>4. No Right to Stop Payment</strong></p>\r\n\r\n<p>You do not have the right to stop payment on a transaction originated with your Paycoo Card.</p>\r\n\r\n<p><strong>5. &ldquo;Lock Card&rdquo; Feature</strong></p>\r\n\r\n<p><em>You may use the &ldquo;Lock Card&rdquo; feature of Paycoo to disable your Paycoo Card if you lose your Paycoo Card or think it has been stolen.</em></p>\r\n\r\n<p>In the event of a lost, stolen, or misplaced Paycoo Card, or you otherwise want to prevent future transactions from your Paycoo Card, you may disable your Paycoo Card with the Paycoo&rsquo;s &ldquo;Lock Card&rdquo; feature within Paycoo. Use of this feature will not prevent processing of pending transactions initiated prior to disabling your Paycoo Card. In the event you have found your card, or otherwise want to enable a disabled Paycoo Card, you must select the &ldquo;Unlock Card&rdquo; option within the Paycoo before your &ldquo;locked&rdquo; Paycoo Card can be used for transactions. You are responsible for preventing unauthorized disabling and enabling activity on your device relating to your Paycoo Card. Such activity, when not authorized, may be deemed invalid in Paycoo&rsquo;s sole discretion.</p>\r\n\r\n<p><strong>6. Card Cancellation</strong></p>\r\n\r\n<p><em>If we determine that you are no longer eligible for a Paycoo Card, we will let the issuing bank know and your Paycoo Card may be canceled without notice.</em></p>\r\n\r\n<p>We will inform the issuing bank if we determine that you are no longer eligible for your Paycoo Card. If you are no longer eligible for your Paycoo Card it may be canceled at any time without notice as detailed in the applicable Paycoo Card Terms and your funds will be returned to you unless they are the subject of an investigation into suspected unlawful activity, or if Paycoo is otherwise required by law to withhold your funds.</p>\r\n\r\n<p><strong>7. Disclaimer</strong></p>\r\n\r\n<p><em>We make no guarantees regarding your Paycoo Card and we are not responsible if it gets stolen, lost, destroyed, or used without your permission.</em></p>\r\n\r\n<p>Paycoo disclaims all express or implied warranties as to your Paycoo Card. Except as otherwise set forth herein or required by applicable law, Paycoo is not responsible if your Paycoo Card is lost, stolen, destroyed, or used without your permission.</p>\r\n\r\n<p><strong>VI. OTHER LEGAL TERMS</strong></p>\r\n\r\n<p><strong>1. Recovery of Funds</strong></p>\r\n\r\n<p><em>You give us permission to recover amounts you owe by debiting funds available in your Paycoo account or any other account you may have with Paycoo. This may involve us making attempts to recover less than the full amount you owe to us. We might contact you or take other legal actions to collect amounts due.</em></p>\r\n\r\n<p>You authorize Paycoo to debit, charge, setoff against and otherwise recover funds from your Account, your Paycoo Balance, any Balance (as defined in the Payment Terms) or any Reserve (as defined in the Payment Terms) if applicable, and any payment instrument, linked bank, depository and other account registered in your Account. Your authorization will remain in full force and effect until the later of closure or termination of your Account, or the disbursement of all funds held on your behalf.</p>\r\n\r\n<p>Further, in the event that any attempt to recover funds from you should fail, your authorizations hereunder include your grant to Paycoo of new, original authorizations to recover all or less than all of the amount you owe us or belong to us. You authorize Paycoo to take the above steps without prior notice to you and irrespective of (i) whether we have made demand under these Paycoo Terms, the Payment Terms, the General Terms or any other agreement you have with us; and (ii) whether the obligation is contingent, matured or unmatured. Your authorization hereunder includes all authorizations to take the above steps in complete compliance with the Network Rules. You agree that your grant of the authorizations hereunder has the same legal effect as if you had signed a paper containing the same terms.</p>\r\n\r\n<p>If Paycoo is unable to recover the funds by these means, Paycoo may attempt to contact you or may take other legal actions to collect the amounts due, to the extent allowed by applicable law.</p>\r\n\r\n<p><strong>2. Compliance with Governmental Authorities</strong></p>\r\n\r\n<p>Paycoo may freeze, withhold, or remit funds in your Account in response to a facially valid subpoena, court order, search warrant, or other binding order from a governmental authority, including but not limited to tax levies or wage garnishment orders.</p>\r\n\r\n<p><strong>3. Limitations on Use</strong></p>\r\n\r\n<p><em>We may limit your funding sources to reduce risk. You will use Paycoo legally and in accordance with debit and credit card network rules. You agree to not abuse the payment system or the service. We may block or reverse any transaction, including those that violate our terms or the law, at your expense.</em></p>\r\n\r\n<p>Paycoo may limit the funding sources available for a specific transaction at any time in its sole discretion. You may not use unaffiliated prepaid cards or gift cards to fund transactions on the Paycoo.</p>\r\n\r\n<p>You agree that you are independently responsible for complying with all applicable laws in all of your activities related to your use of the Service and for all communications you send through the Service.</p>\r\n\r\n<p>You further agree that in connection with your use of the Service, or in the course of your interactions with Paycoo, a user or a third party, you will not (a) use your Account or the Service in a manner that Paycoo, Visa or MasterCard, reasonably believe to be an abuse of the payment card system or a violation of payment card association rules, (b) provide yourself a Paycoo advance from your Eligible Credit Account (or help others to do so), or (c) use the Service to make transactions for the sole purpose of earning rewards, perks, miles, points, etc. with your Eligible Credit Account.</p>\r\n\r\n<p>We reserve the right to block, refuse, or reverse any transaction, in our sole discretion. We will notify the affected parties promptly if we decide to do so, but notification is not required if the transaction is prohibited by these terms or applicable law. Neither we nor third parties to whom we assign or delegate rights or responsibilities will be liable for any claims or damages resulting from prohibited transactions. All costs for research and resolution for any misapplied, misposted or misdirected prohibited transactions will be your sole responsibility and not ours.</p>\r\n\r\n<p><strong>4. Limitations on Our Liability for Failure to Complete Transactions</strong></p>\r\n\r\n<p><em>There are some circumstances where we will not be liable if transactions do not go through. Those circumstances are listed here.</em></p>\r\n\r\n<p>We will not be liable, for failure to complete transactions in the following circumstances: (a) Through no fault of ours, there are insufficient funds in your Paycoo Account to complete the transaction; (b) A merchant refuses to accept your Paycoo Card; (c) The information supplied by you is incorrect, incomplete, ambiguous or untimely; (d) An ATM where you are making a Paycoo withdrawal does not have enough cash; (e) An electronic terminal (Point of Sale or ATM) where you are making a transaction does not operate properly; (f) Access to funds in your Paycoo Account have been blocked after you reported your Paycoo Card lost or stolen; (g) The transaction cannot be completed because your Paycoo Card is damaged; (h) There is a hold or your funds are subject to legal or administrative process or other encumbrance restricting their use; (i) We have reason to believe the requested transaction is unauthorized; (j) Circumstances beyond our control (such as fire, flood, power failure, strike, labor dispute, critical service provider failure, computer breakdown, telephone line disruption, government or regulatory action, or a natural disaster) prevent or delay the completion of the transaction, despite reasonable precautions that we have taken; or (k) Any other exception stated in our Agreement with you.</p>\r\n\r\n<p><strong>5. Dispute Resolution</strong></p>\r\n\r\n<p>Each of your external funding sources may have different dispute resolution rights and procedures in the event your transaction turns out to be unsatisfactory (if, for example, you are disputing charges on your account). Your dispute resolution rights are determined by the funding source used to fund the applicable transaction. Please consult the terms and conditions of such funding source for more detail.</p>\r\n\r\n<p><strong>6. Our Relationship With You</strong></p>\r\n\r\n<p>We are an independent contractor for all purposes, except that we act as your limited agent with respect to the custody and transfer of your funds for the purposes set forth herein only.</p>\r\n\r\n<p><strong>7. Termination of Account</strong></p>\r\n\r\n<p>We can terminate or refuse your access to the service at any time, for any reason.</p>\r\n\r\n<p><strong>8. Services Upon Closure of Account</strong></p>\r\n\r\n<p><em>When your Paycoo account is closed, we&rsquo;ll settle any pending transactions and return remaining funds in your account to you. We may need to hold your funds if there is an investigation at the time your Account is closed.</em></p>\r\n\r\n<p>Any pending transactions at the time of termination, closure, or suspension of your Account will be settled. Any funds that we are holding in custody for you at the time of termination, suspension, or closure of your Account, less any applicable fees, (1) may be made available for you to cash out in Paycoo&rsquo;s discretion and subject to the other conditions in these Paycoo Terms, and (2) we may require you to link a new bank account that has not been associated with your Account to cash out such funds.. If an investigation is pending at the time of closure, we may hold your funds until resolution of the investigation.</p>\r\n\r\n<p><strong>9. Referral Programs</strong></p>\r\n\r\n<p>From time to time, we may offer referral programs or incentives for inviting others to use the Service (a &ldquo;Referral Program&rdquo;). Any bonuses or incentives under such Referral Program shall be subject to the then current Referral Program terms, if applicable, and otherwise at our sole discretion.</p>\r\n\r\n<p><strong>10. General Terms and Conditions</strong></p>\r\n\r\n<p>The customer acknowledges that his signature on these terms and conditions means his full and unconditional acceptance and commitment to use or the agreed products in accordance with these terms and conditions.</p>\r\n\r\n<p>The bank may amend all or some of these terms and conditions at any time and replace them in whole or in part with other new terms and conditions, or replace a page or pages contained on the electronic application of the notice of the service notice to you at The customer to use this service after making any of the aforementioned modifications constitutes his acceptance and approval of those modifications.</p>\r\n\r\n<p>The customer abides by all the rules and provisions issued by the Central Bank related to bank transfers, as well as the due diligence procedures for prepaid card service customers.</p>\r\n\r\n<p>The bank/company has the right from time to time to add/modify/maintain/update the electronic banking services that may require them to stop the services for a certain period specified by the bank. The customer can refer to the bank during this period with any claims, provided that the modification, update and/or maintenance procedure of the service is announced.</p>\r\n\r\n<p>The customer is solely responsible for the use of any public, shared or private software or hardware that may endanger the security and effectiveness of the use of this service and which results in the disclosure of customer data, for example: mobile phone hacking, and the customer alone bears all the consequences of that</p>\r\n\r\n<p>The customer acknowledges the validity of the data and information recorded in the application for electronic banking services, and the customer bears any consequences resulting from the incorrectness of any of these data and information</p>\r\n\r\n<p>Only the original customer, the owner of the card, is entitled to receive the card and subscribe to electronic banking services.</p>\r\n\r\n<p>The customer acknowledges that he is aware that the instructions, transactions, data and transactions that he enters during the transaction through the &ldquo;Paycoo X Banque Du Caire&rdquo; card service and/or the phone application of the service are dealt with without any further review from the bank, or without notices. The bank bears any responsibility towards the customer in the event of an error in any data entered on the mobile application to use the service.</p>\r\n\r\n<p>If the customer becomes aware that another person has viewed the confidential data or the existence of suspicious transactions related to the prepaid card or the mobile phone application, he is obligated to contact the bank / company to report and stop the card, and in the event the customer does not contact him, he is responsible for operations or transactions done on his account and all transactions are confirmed using his confidential data</p>\r\n\r\n<p>The customer undertakes that all transactions made through the &ldquo;Paycoo X Banque Du Caire&rdquo; card through the phone application of the service are legitimate transactions and are used for legitimate purposes and for persons who are not prohibited from dealing with them, and acknowledges that he is the real beneficiary of this service.</p>\r\n\r\n<p>The customer authorizes the bank/company to send alerts, advertisements, advertisements and marketing campaigns about new products using any of the electronic means including but not limited to: the internet, e-mail, e-mail, and e-mail.</p>\r\n\r\n<p>In the event that services are interrupted due to the interruption of the systems operated by the bank or any of the specialized parties that the bank contracts with, the bank shall exercise due diligence to restore the services as soon as possible, and once the service is returned to you, the service is returned.</p>\r\n\r\n<p>The customer is solely responsible for the correctness of the data related to the bill payment feature, including but not limited to the phone number, the amount, the invoice number, etc., without the slightest responsibility on the bank, provided that the customer bears all that is required of the customer. The bank does not review the correctness of this data</p>\r\n\r\n<p>The customer is committed to providing enough balance in the account to pay any invoices in the dates set for payment and the bank is not responsible for paying any bills on due dates due to the lack of enough balance and the customer is alone in the event of any returns or fines for delayed invoices from delayed repayment.</p>\r\n\r\n<p>No responsibility shall be incurred by the bank or the specialized parties with whom the bank contracts for any damages resulting from delays in sending and transmitting information, non-receipt, errors or loss of information, or forcible disruption of work, negligence of accidents or accidents. Natural disasters, security problems, measures taken by state authorities or any other events, and the Bank shall not be liable for any damage to the customer, technology or electronic equipment in the event of any such occurrence.</p>\r\n\r\n<p>The customer is obligated to read and understand the warnings and alerts contained on the application for the service, and to accept all terms and conditions and any changes thereto, which will appear through the electronic services website, and considered legal.</p>\r\n\r\n<p>The bank is obligated to maintain the confidentiality of all data and information that may be delivered to it from the customer on the occasion of providing any of its products or services. in force in the Arab Republic of Egypt, or in implementation of any binding provisions or orders, or in accordance with the terms and conditions of the application and the card.</p>\r\n\r\n<p>The client is delegated and the Cairo Bank declares a permanent statement that is not referred to in circulation and disclosure of some or all data on its accounts at any third party to develop and facilitate all banking banks or the provision of customer banking services without a liability for the Bank. Paycoo company access to transaction data</p>\r\n\r\n<p>The relevant Egyptian laws and their implementing regulations, instructions and supervisory rules that govern the services that the bank provides to customers via mobile phone, and disputes are settled within the Arab Republic of Egypt.</p>\r\n\r\n<p>The customer acknowledges that he accepts full and complete responsibility for maintaining confidential data and the necessary procedures for its preservation and not disclosing it to any person or employee of the bank&rsquo;s employees or any other party including, for example, the personal information, such as the identity card or identity card. And not to disclose the password to anyone, including bank employees</p>\r\n\r\n<p>The bank exerts due diligence to provide the &ldquo;Paycoo X Banque Du Caire&rdquo; card service through the private phone application and is not responsible for any failure to provide it, in part or in whole, for any reason beyond the control of the bank, and the bank does not disclose For example, it is not limited to quality, speed, performance, accuracy, etc. The bank also does not guarantee that the programs are free from malfunctions or defects. The bank undertakes to adjust the negative effects on banking operations that occur because of this, and the customer acknowledges that the bank has incurred what was incurred by the bank. or default</p>\r\n\r\n<p>Al-Qahera&#39;s logo is a trademark and registered for the Bank, and in general, bank is entitled to the Banque Du Caire products and are the property of the Bank or any other party referred to on the website pages.</p>\r\n\r\n<p>A customer commits and undertakes not to copy or publish any of the programs, screens, documents, pictures, graphics, information, signs, texts or promotional materials of the Bank, and the customer is also committed not to allow any other persons to make through you copies of copies or copies of available screensthrough the application from or to, but not limited to, any computer, phone, smart phone, or any other similar electronic device. The customer shall take all necessary legal measures to protect his rights, other than the necessary compensations to correct the damages that may be incurred by the bank.</p>\r\n\r\n<p>Any notification, request, or any correspondence is sent to the customer at his address registered through the application.</p>\r\n\r\n<p>The terms and conditions of the application as well as the subscription form for the service are an integral and complementary part of each other.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-03-14 00:17:02'),
(37, 'inactive_auth_minute', '3', NULL, NULL),
(38, 'about_us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, '2023-03-14 00:19:55'),
(39, 'stripe', '{\"status\":\"0\",\"api_key\":\"\",\"published_key\":\"\"}', '2022-04-16 07:43:45', '2022-04-19 06:30:02'),
(40, 'razor_pay', '{\"status\":\"0\",\"razor_key\":\"\",\"razor_secret\":\"\"}', '2022-04-16 08:04:01', '2022-04-19 06:31:39'),
(41, 'paystack', '{\"status\":\"0\",\"publicKey\":\"\",\"secretKey\":\"\",\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":\"demo@gmail.com\"}', '2022-04-16 08:04:29', '2022-04-19 06:29:56'),
(42, 'bkash', '{\"status\":\"0\",\"api_key\":null,\"api_secret\":null,\"username\":null,\"password\":null}', NULL, NULL),
(43, 'paymob', '{\"status\":\"0\",\"api_key\":\"==\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', NULL, NULL),
(44, 'mercadopago', '{\"status\":\"0\",\"public_key\":\"\",\"access_token\":\"\"}', NULL, NULL),
(45, 'flutterwave', '{\"status\":\"0\",\"public_key\":\"\",\"secret_key\":\"\",\"hash\":\"\"}', NULL, NULL),
(46, 'senang_pay', '{\"status\":\"0\",\"secret_key\":\"\",\"merchant_id\":\"\"}', '2022-04-16 08:05:57', '2022-04-16 08:17:12'),
(47, 'app_theme', '1', NULL, NULL);
INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(48, 'payment_otp_verification', '1', NULL, NULL),
(49, 'hotline_number', '19999', NULL, NULL),
(50, 'merchant_commission_percent', '10', NULL, NULL),
(51, 'payment', '{\"status\":1,\"message\":\"payment done successfully.\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', '1.00', NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', '1.00', NULL, NULL),
(3, 'Euro', 'EUR', '€', '1.00', NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', '1.00', NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', '1.00', NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', '1.00', NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', '1.00', NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', '1.00', NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', '1.00', NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', '1.00', NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', '1.00', NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', '1.00', NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', '1.00', NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', '1.00', NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', '1.00', NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', '1.00', NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', '1.00', NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', '1.00', NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', '1.00', NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', '1.00', NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', '1.00', NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', '1.00', NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', '1.00', NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', '1.00', NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', '1.00', NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', '1.00', NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', '1.00', NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', '1.00', NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', '1.00', NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', '1.00', NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', '1.00', NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', '1.00', NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', '1.00', NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', '1.00', NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', '1.00', NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', '1.00', NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', '1.00', NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', '1.00', NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', '1.00', NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', '1.00', NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', '1.00', NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', '1.00', NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', '1.00', NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', '1.00', NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', '1.00', NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', '1.00', NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', '1.00', NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', '1.00', NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', '1.00', NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', '1.00', NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', '1.00', NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', '1.00', NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', '1.00', NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', '1.00', NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', '1.00', NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', '1.00', NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', '1.00', NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', '1.00', NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', '1.00', NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', '1.00', NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', '1.00', NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', '1.00', NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', '1.00', NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', '1.00', NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', '1.00', NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', '1.00', NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', '1.00', NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', '1.00', NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', '1.00', NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', '1.00', NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', '1.00', NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', '1.00', NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', '1.00', NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', '1.00', NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', '1.00', NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', '1.00', NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', '1.00', NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', '1.00', NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', '1.00', NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', '1.00', NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', '1.00', NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', '1.00', NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', '1.00', NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', '1.00', NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', '1.00', NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', '1.00', NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', '1.00', NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', '1.00', NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', '1.00', NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', '1.00', NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', '1.00', NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', '1.00', NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', '1.00', NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', '1.00', NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', '1.00', NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', '1.00', NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', '1.00', NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', '1.00', NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', '1.00', NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', '1.00', NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', '1.00', NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', '1.00', NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', '1.00', NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', '1.00', NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', '1.00', NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', '1.00', NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', '1.00', NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', '1.00', NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', '1.00', NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', '1.00', NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', '1.00', NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', '1.00', NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', '1.00', NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', '1.00', NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', '1.00', NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', '1.00', NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', '1.00', NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', '1.00', NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', '1.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `e_money`
--

CREATE TABLE `e_money` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `current_balance` double(14,2) NOT NULL DEFAULT 0.00,
  `charge_earned` double(14,2) NOT NULL DEFAULT 0.00,
  `pending_balance` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_money`
--

INSERT INTO `e_money` (`id`, `user_id`, `current_balance`, `charge_earned`, `pending_balance`, `created_at`, `updated_at`) VALUES
(1, 1, 2200022.00, 80.00, 0, '2023-03-13 03:33:57', '2023-03-31 02:36:34'),
(2, 2, 880.00, 0.00, 0, '2023-03-14 00:34:23', '2023-03-31 02:36:34'),
(3, 3, 0.00, 0.00, 0, '2023-03-29 06:34:10', '2023-03-29 06:34:10'),
(4, 4, 21740.00, 0.00, 0, '2023-03-29 06:38:57', '2023-03-31 02:36:34'),
(5, 5, 300.00, 0.00, 0, '2023-03-29 19:30:42', '2023-03-29 19:32:54'),
(6, 6, 0.00, 0.00, 0, '2023-03-30 02:34:36', '2023-03-30 02:34:36'),
(7, 7, 0.00, 0.00, 0, '2023-03-30 02:44:38', '2023-03-30 02:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` double(14,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) NOT NULL,
  `tran_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_topics`
--

CREATE TABLE `help_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `ranking` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_topics`
--

INSERT INTO `help_topics` (`id`, `question`, `answer`, `ranking`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is Paycoo?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, '2023-03-13 23:53:38', '2023-03-13 23:53:38'),
(2, 'How to use?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, '2023-03-13 23:54:01', '2023-03-13 23:54:01'),
(3, 'Who Can use?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '2023-03-13 23:54:42', '2023-03-13 23:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `linked_websites`
--

CREATE TABLE `linked_websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linked_websites`
--

INSERT INTO `linked_websites` (`id`, `name`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Amazon', '2023-03-14-640fba481b5b7.png', 'http://www.amazon.com/', 1, '2022-04-07 08:27:25', '2023-03-14 00:05:28'),
(3, 'maxab', '2023-03-13-640fb8e4e7e1f.png', 'https://www.maxab.io/', 1, '2022-04-18 09:49:58', '2023-03-13 23:59:32'),
(4, 'BreadFast', '2023-03-14-640fb9e1d2938.png', 'https://www.breadfast.com/', 1, '2022-04-18 09:50:23', '2023-03-14 00:03:45'),
(5, 'Carrefour Egypt', '2023-03-14-640fbb5fa14ca.png', 'https://www.carrefouregypt.com/mafegy/ar/', 1, '2023-03-14 00:10:07', '2023-03-14 00:10:07'),
(6, 'Talabat', '2023-03-14-640fbba1d1c2f.png', 'https://www.talabat.com/ar/egypt', 1, '2023-03-14 00:11:13', '2023-03-14 00:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bin` varchar(255) DEFAULT NULL,
  `public_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `merchant_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `user_id`, `store_name`, `callback`, `logo`, `address`, `bin`, `public_key`, `secret_key`, `merchant_number`, `created_at`, `updated_at`) VALUES
(1, 7, 'Geeksy', '01112161029', '2023-03-30-6424f796c1709.png', 'Cairo, Egypt', '12345678', 'aTyL2cBkRXa9DuujUjBrzeyadbPSa5idcfUSll2Dbllh6TASnN', 'sXU9n3QXMnhehgVskhB6YM9p3hyROsgk0n3oMXfHJCCkTg96th', '1112161029', '2023-03-30 02:44:38', '2023-03-30 02:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(241, '2014_10_12_000000_create_users_table', 1),
(242, '2014_10_12_100000_create_password_resets_table', 1),
(243, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(244, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(245, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(246, '2016_06_01_000004_create_oauth_clients_table', 1),
(247, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(248, '2019_08_19_000000_create_failed_jobs_table', 1),
(249, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(250, '2021_11_18_104105_create_business_settings_table', 1),
(251, '2021_11_20_090531_create_currencies_table', 1),
(252, '2021_11_22_065212_add_last_active_at_to_users_table', 1),
(253, '2021_11_23_090107_create_linked_websites_table', 1),
(254, '2021_11_23_104425_add_reference_columns_to_users_table', 1),
(255, '2021_11_23_123056_create_notifications_table', 1),
(256, '2021_11_27_041913_create_phone_verifications_table', 1),
(257, '2021_11_27_052236_add_columns_to_users_table', 1),
(258, '2021_11_29_100204_create_transfers_table', 1),
(259, '2021_12_01_053955_create_transactions_table', 1),
(260, '2021_12_01_063108_create_e_money_table', 1),
(261, '2021_12_04_113130_create_request_money_table', 1),
(262, '2021_12_05_051247_create_funds_table', 1),
(263, '2021_12_06_101224_create_purposes_table', 1),
(264, '2021_12_14_104755_add_note_column_to_transaction', 1),
(265, '2021_12_19_071059_add_twofactor_and_fcmtoken_to_users_table', 1),
(266, '2021_12_21_110529_create_banners_table', 1),
(267, '2021_12_22_121505_add_receiver_column_to_notifications', 1),
(268, '2021_12_26_061202_create_help_topics_table', 1),
(269, '2022_02_01_041254_add_transaction_i_d_to_transactions', 1),
(270, '2022_02_01_065231_type_change_of_ref_trans_id_to_transactions', 1),
(271, '2022_04_07_045435_add_receiver_to_banner_table', 2),
(272, '2022_04_07_060244_add_is_active_column_to_to_users_table', 3),
(273, '2021_06_17_054551_create_soft_credentials_table', 4),
(274, '2022_06_30_051435_add_column_to_user_table', 5),
(275, '2022_07_05_102531_change_data_type_of_transfer_table', 6),
(276, '2022_10_16_063545_create_withdrawal_methods_table', 7),
(277, '2022_10_18_040302_create_withdraw_requests_table', 7),
(278, '2022_10_18_141838_create_user_log_histories_table', 7),
(279, '2022_11_08_055006_change_default_kyc_status', 7),
(280, '2022_12_08_045549_create_merchants_table', 8),
(281, '2022_12_11_050638_create_payment_records_table', 8),
(282, '2022_12_21_041139_add_column_dail_country_code_to_users_table', 8),
(283, '2022_12_26_122524_add_expired_at_column_in_payment_records_table', 8),
(284, '2023_01_23_065548_add_pending_balance_in_e_money_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receiver` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`, `receiver`) VALUES
(2, 'Welcome Users to paycoo', 'welcome users', NULL, 1, '2023-03-29 19:37:18', '2023-03-29 19:37:18', 'all'),
(3, 'Welcome Users to paycoo', 'welcome users', NULL, 1, '2023-03-29 19:40:13', '2023-03-29 19:40:13', 'all'),
(4, 'yaaaaaa fektyyyyyyyyyyy', 'yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy', NULL, 1, '2023-03-29 19:41:33', '2023-03-29 19:41:33', 'all'),
(5, 'yaaaaaa fektyyyyyyyyyyy', 'yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy yaaaaaa fektyyyyyyyyyyy', NULL, 1, '2023-03-29 19:44:05', '2023-03-29 19:44:05', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a59de6af6e00e51e13955820d92f831fc507417262f89077dd19be18236a02841f669af9470c4463', 6, 3, 'AgentAuthToken', '[]', 0, '2023-03-30 03:46:51', '2023-03-30 03:46:51', '2023-03-30 04:26:51'),
('b04f16486bb066731e77f844e40d3ad2ce2b192b06b1b2b70f3f009e7bda8443085eb504ccdfdcfa', 5, 3, 'CustomerAuthToken', '[]', 0, '2023-03-30 09:17:59', '2023-03-30 09:17:59', '2023-03-30 09:57:59'),
('b289757eb60b3e4e0bf26b0b2022052c0486acf4341b2b6139fcd23cee2d543051f84654d8c3b18f', 4, 3, 'CustomerAuthToken', '[]', 0, '2023-03-31 02:36:50', '2023-03-31 02:36:50', '2023-03-31 03:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'bR3oc2ab81JlHVMcsIXdFcAhBuXQTipmcIcd7Fno', NULL, 'http://localhost', 1, 0, 0, '2022-04-07 08:03:44', '2022-04-07 08:03:44'),
(2, NULL, 'Laravel Password Grant Client', 'UhJDtulOAo0vdfuaHCtQ4KT4QOiYDdmImM9x48Ax', 'users', 'http://localhost', 0, 1, 0, '2022-04-07 08:03:44', '2022-04-07 08:03:44'),
(3, NULL, 'Laravel Personal Access Client', 'HpFYsWP7yU6grzZOwpsWP1oACFUuOwMHHMGuqYgl', NULL, 'http://localhost', 1, 0, 0, '2022-04-07 08:03:56', '2022-04-07 08:03:56'),
(4, NULL, 'Laravel Password Grant Client', 'P03bw333WuSbG3KcWW0VYBBOOTAhcCZaCB3rTt3V', 'users', 'http://localhost', 0, 1, 0, '2022-04-07 08:03:56', '2022-04-07 08:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-04-07 08:03:44', '2022-04-07 08:03:44'),
(2, 3, '2022-04-07 08:03:56', '2022-04-07 08:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `phone` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` char(36) NOT NULL,
  `merchant_user_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` double(14,2) NOT NULL DEFAULT 0.00,
  `callback` varchar(255) DEFAULT NULL,
  `is_paid` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=unpaid, 1=paid',
  `expired_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_verifications`
--

INSERT INTO `phone_verifications` (`id`, `phone`, `otp`, `created_at`, `updated_at`) VALUES
(1, '+2001064368435', '3258', '2023-03-27 22:01:01', '2023-03-27 22:01:01'),
(2, '+201064368435', '2818', '2023-03-29 06:31:40', '2023-03-29 06:31:40'),
(3, '+201126224664', '9732', '2023-03-29 19:26:01', '2023-03-29 19:26:01'),
(4, '+2001021192842', '9788', '2023-03-31 01:06:09', '2023-03-31 01:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `purposes`
--

CREATE TABLE `purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purposes`
--

INSERT INTO `purposes` (`id`, `title`, `logo`, `color`, `created_at`, `updated_at`) VALUES
(8, 'Send Money', '2023-03-13-640fb8398c07e.png', '#e4ebec', '2023-03-13 23:56:41', '2023-03-13 23:56:41'),
(9, 'Special Gift', '2023-03-13-640fb882efdfd.png', '#ffcb66', '2023-03-13 23:57:54', '2023-03-13 23:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `request_money`
--

CREATE TABLE `request_money` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) NOT NULL,
  `to_user_id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double(14,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ref_trans_id` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `debit` double(14,2) NOT NULL DEFAULT 0.00,
  `credit` double(14,2) NOT NULL DEFAULT 0.00,
  `balance` double(14,2) NOT NULL DEFAULT 0.00,
  `from_user_id` bigint(20) DEFAULT NULL,
  `to_user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `ref_trans_id`, `transaction_type`, `debit`, `credit`, `balance`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`, `note`, `transaction_id`) VALUES
(1, 1, NULL, 'cash_in', 0.00, 2000.00, 2000.00, 1, 1, '2023-03-14 04:24:15', '2023-03-14 04:24:15', NULL, 'HzqBN1678767855'),
(2, 2, NULL, 'cash_in', 0.00, 100.00, 100.00, 1, 2, '2023-03-14 04:24:50', '2023-03-14 04:24:50', NULL, '4EbNN1678767890'),
(3, 1, '4EbNN1678767890', 'cash_out', 100.00, 0.00, 1900.00, 1, 2, '2023-03-14 04:24:50', '2023-03-14 04:24:50', NULL, 'L6OfH1678767890'),
(4, 2, NULL, 'cash_in', 0.00, 1000.00, 1100.00, 1, 2, '2023-03-14 04:27:14', '2023-03-14 04:27:14', NULL, 'CiRiG1678768034'),
(5, 1, 'CiRiG1678768034', 'cash_out', 1000.00, 0.00, 900.00, 1, 2, '2023-03-14 04:27:14', '2023-03-14 04:27:14', NULL, 'wdZEK1678768034'),
(6, 1, NULL, 'cash_in', 0.00, 10000.00, 10900.00, 1, 1, '2023-03-27 18:48:30', '2023-03-27 18:48:30', NULL, 's0rMr1679942910'),
(7, 2, NULL, 'cash_in', 0.00, 1000.00, 2100.00, 1, 2, '2023-03-27 18:48:41', '2023-03-27 18:48:41', NULL, '7Mp0m1679942921'),
(8, 1, '7Mp0m1679942921', 'cash_out', 1000.00, 0.00, 9900.00, 1, 2, '2023-03-27 18:48:41', '2023-03-27 18:48:41', NULL, 'JJVaq1679942921'),
(9, 1, NULL, 'cash_in', 0.00, 1000.00, 10900.00, 1, 1, '2023-03-27 19:15:13', '2023-03-27 19:15:13', NULL, 'gzBjJ1679944513'),
(10, 1, NULL, 'cash_in', 0.00, 10022.00, 20922.00, 1, 1, '2023-03-29 06:40:36', '2023-03-29 06:40:36', NULL, 'BR8sV1680072036'),
(11, 4, NULL, 'cash_in', 0.00, 10200.00, 10200.00, 1, 4, '2023-03-29 06:40:49', '2023-03-29 06:40:49', NULL, 'PpOhk1680072049'),
(12, 1, 'PpOhk1680072049', 'cash_out', 10200.00, 0.00, 10722.00, 1, 4, '2023-03-29 06:40:49', '2023-03-29 06:40:49', NULL, '9qyW01680072049'),
(13, 2, NULL, 'send_money', 310.00, 0.00, 1790.00, 2, 4, '2023-03-29 07:01:20', '2023-03-29 07:01:20', NULL, 'DdcjZ1680073280'),
(14, 4, 'DdcjZ1680073280', 'received_money', 0.00, 300.00, 10500.00, 2, 4, '2023-03-29 07:01:20', '2023-03-29 07:01:20', 'Send Money', '94MKm1680073280'),
(15, 4, 'DdcjZ1680073280', 'admin_charge', 0.00, 10.00, 10722.00, 2, 1, '2023-03-29 07:01:22', '2023-03-29 07:01:22', 'Send Money', '44pRx1680073282'),
(16, 2, NULL, 'send_money', 310.00, 0.00, 1480.00, 2, 4, '2023-03-29 14:05:44', '2023-03-29 14:05:44', NULL, 'N69pv1680098744'),
(17, 4, 'N69pv1680098744', 'received_money', 0.00, 300.00, 10800.00, 2, 4, '2023-03-29 14:05:44', '2023-03-29 14:05:44', 'Send Money', 't2ZiQ1680098744'),
(18, 4, 'N69pv1680098744', 'admin_charge', 0.00, 10.00, 10722.00, 2, 1, '2023-03-29 14:05:44', '2023-03-29 14:05:44', 'Send Money', 'UsPHe1680098744'),
(19, 2, NULL, 'send_money', 32.00, 0.00, 1448.00, 2, 4, '2023-03-29 18:21:02', '2023-03-29 18:21:02', NULL, 'Ic9A91680114062'),
(20, 4, 'Ic9A91680114062', 'received_money', 0.00, 22.00, 10822.00, 2, 4, '2023-03-29 18:21:02', '2023-03-29 18:21:02', 'Send Money', 'Ke8bt1680114062'),
(21, 4, 'Ic9A91680114062', 'admin_charge', 0.00, 10.00, 10722.00, 2, 1, '2023-03-29 18:21:02', '2023-03-29 18:21:02', 'Send Money', '9lscJ1680114062'),
(22, 4, NULL, 'send_money', 310.00, 0.00, 10512.00, 4, 2, '2023-03-29 19:12:29', '2023-03-29 19:12:29', NULL, '4HVOP1680117149'),
(23, 2, '4HVOP1680117149', 'received_money', 0.00, 300.00, 1748.00, 4, 2, '2023-03-29 19:12:29', '2023-03-29 19:12:29', 'Send Money', 'kKUnN1680117149'),
(24, 2, '4HVOP1680117149', 'admin_charge', 0.00, 10.00, 10722.00, 4, 1, '2023-03-29 19:12:29', '2023-03-29 19:12:29', 'Send Money', 'fyLhT1680117149'),
(25, 2, NULL, 'send_money', 558.00, 0.00, 1190.00, 2, 4, '2023-03-29 19:18:30', '2023-03-29 19:18:30', NULL, 'lr5YW1680117510'),
(26, 4, 'lr5YW1680117510', 'received_money', 0.00, 548.00, 11060.00, 2, 4, '2023-03-29 19:18:30', '2023-03-29 19:18:30', 'Send Money', 'gkF2G1680117510'),
(27, 4, 'lr5YW1680117510', 'admin_charge', 0.00, 10.00, 10722.00, 2, 1, '2023-03-29 19:18:30', '2023-03-29 19:18:30', 'Send Money', '6L2fz1680117510'),
(28, 4, NULL, 'send_money', 310.00, 0.00, 10750.00, 4, 5, '2023-03-29 19:32:54', '2023-03-29 19:32:54', NULL, 'TjQAo1680118374'),
(29, 5, 'TjQAo1680118374', 'received_money', 0.00, 300.00, 300.00, 4, 5, '2023-03-29 19:32:54', '2023-03-29 19:32:54', 'Send Money', 'G6TdS1680118374'),
(30, 5, 'TjQAo1680118374', 'admin_charge', 0.00, 10.00, 10722.00, 4, 1, '2023-03-29 19:32:54', '2023-03-29 19:32:54', 'Send Money', 'LDWzT1680118374'),
(31, 4, NULL, 'send_money', 310.00, 0.00, 10440.00, 4, 2, '2023-03-29 20:02:55', '2023-03-29 20:02:55', NULL, 'qrh5h1680120175'),
(32, 2, 'qrh5h1680120175', 'received_money', 0.00, 300.00, 1490.00, 4, 2, '2023-03-29 20:02:55', '2023-03-29 20:02:55', 'Send Money', 'Gopcn1680120175'),
(33, 2, 'qrh5h1680120175', 'admin_charge', 0.00, 10.00, 10722.00, 4, 1, '2023-03-29 20:02:55', '2023-03-29 20:02:55', 'Send Money', 'lkSsq1680120175'),
(34, 4, NULL, 'cash_in', 0.00, 10700.00, 21140.00, 1, 4, '2023-03-29 20:03:05', '2023-03-29 20:03:05', NULL, 'FgJZY1680120185'),
(35, 1, 'FgJZY1680120185', 'cash_out', 10700.00, 0.00, 22.00, 1, 4, '2023-03-29 20:03:05', '2023-03-29 20:03:05', NULL, '85fpO1680120185'),
(36, 1, NULL, 'cash_in', 0.00, 2200000.00, 2200022.00, 1, 1, '2023-03-30 02:32:40', '2023-03-30 02:32:40', NULL, '7VcfY1680143560'),
(37, 2, NULL, 'send_money', 305.00, 0.00, 1185.00, 2, 4, '2023-03-30 12:14:53', '2023-03-30 12:14:53', NULL, 'zDFil1680178493'),
(38, 4, 'zDFil1680178493', 'received_money', 0.00, 300.00, 21440.00, 2, 4, '2023-03-30 12:14:53', '2023-03-30 12:14:53', 'Send Money', 'jy8wI1680178493'),
(39, 4, 'zDFil1680178493', 'admin_charge', 0.00, 5.00, 2200022.00, 2, 1, '2023-03-30 12:14:53', '2023-03-30 12:14:53', 'Send Money', '2cabl1680178493'),
(40, 2, NULL, 'send_money', 305.00, 0.00, 880.00, 2, 4, '2023-03-31 02:36:34', '2023-03-31 02:36:34', NULL, 'JdMWA1680230194'),
(41, 4, 'JdMWA1680230194', 'received_money', 0.00, 300.00, 21740.00, 2, 4, '2023-03-31 02:36:34', '2023-03-31 02:36:34', 'Send Money', '5mDgW1680230194'),
(42, 4, 'JdMWA1680230194', 'admin_charge', 0.00, 5.00, 2200022.00, 2, 1, '2023-03-31 02:36:34', '2023-03-31 02:36:34', 'Send Money', '77ZRJ1680230194');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `amount` double(14,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `unique_id`, `sender`, `receiver`, `receiver_type`, `amount`, `created_at`, `updated_at`) VALUES
(1, '12839032931', 1, 2, '2', 100.00, '2023-03-14 04:24:50', '2023-03-14 04:24:50'),
(2, '21917092756', 1, 2, '2', 1000.00, '2023-03-14 04:27:14', '2023-03-14 04:27:14'),
(3, '38151674660', 1, 2, '2', 1000.00, '2023-03-27 18:48:41', '2023-03-27 18:48:41'),
(4, '45268935530', 1, 4, '2', 10200.00, '2023-03-29 06:40:49', '2023-03-29 06:40:49'),
(5, '59044438656', 1, 4, '2', 10700.00, '2023-03-29 20:03:05', '2023-03-29 20:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `dial_country_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '[''Admin''=>0, ''Agent''=>1, ''Customer''=>2]',
  `role` tinyint(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_active_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `referral_id` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `two_factor` tinyint(1) NOT NULL DEFAULT 0,
  `fcm_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `identification_type` varchar(255) DEFAULT NULL,
  `identification_number` varchar(255) DEFAULT NULL,
  `identification_image` varchar(255) NOT NULL DEFAULT '[]',
  `is_kyc_verified` tinyint(1) NOT NULL DEFAULT 3 COMMENT '[''Pending''=>0, ''Approved''=>1, ''denied''=>2, ''YetToApply''=>3]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `dial_country_code`, `phone`, `email`, `image`, `type`, `role`, `password`, `is_phone_verified`, `is_email_verified`, `remember_token`, `created_at`, `updated_at`, `last_active_at`, `unique_id`, `referral_id`, `gender`, `occupation`, `two_factor`, `fcm_token`, `is_active`, `identification_type`, `identification_number`, `identification_image`, `is_kyc_verified`) VALUES
(1, 'Ahmed', 'Abdelhady', NULL, '+201021192842', 'ahmed.abdelhady@ejust.edu.eg', NULL, 0, NULL, '$2y$10$vvBEm.SGiju73RJUKrAgUe01deu/OLbOKBnLQvLyd30GZmqPPabOm', 1, 0, NULL, '2023-03-13 03:33:57', '2023-03-31 15:24:27', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, '[]', 3),
(2, 'Ahmed', 'Abdelhady', '+20', '+2001021192842', 'ahmed.abdelhady@ejust.edu.eg', '2023-03-14-640fc10fbf0e3.png', 2, NULL, '$2y$10$ZzIx4OuSyawMOMILP2PaEelfwyqSDfn.A1g008YDIzviUYQT4UMD.', 0, 0, NULL, '2023-03-14 00:34:23', '2023-03-31 03:55:04', '2023-03-31 03:55:04', '296620', NULL, 'Male', 'Egypt Japan University', 1, 'eC3rNfdD7EMUuckQJqBVkj:APA91bE2X6Lybp9imibqBptcE0c7hfckUSRWhFzysZOWOkmfzyhJUWCJ5E6nv6NlvBhQGkR_MZVRxx2xfb5rRLxXuy48jJWn1UyyZgl5lwMuANyje602ayHJamJyvgMqaDCfQWzC_lRM', 1, 'passport', 'A250168', '[\"2023-03-29-6423e197e10fb.png\"]', 1),
(4, 'Ahmed', 'Fikry', '+20', '+201064368435', 'ahmed.fikry@ejust.edu.eg', '2023-03-29-6423dd012814a.png', 2, NULL, '$2y$10$Aq170h3UMpkZJKowS/m5tuKGlvF82clfA.T8IjmO0kKQf.yZECtgO', 0, 0, NULL, '2023-03-29 06:38:57', '2023-03-31 02:36:55', '2023-03-31 02:36:55', '485233', NULL, 'male', 'EJUST', 0, 'dxfY-rMKSYGZrG6osXuQc3:APA91bGQ0Y64gTQw4QSUYmInSDwb2_L4o5efvclB-DKOcXfVLTrztdAl4OHrW7Gj0kPuwLb4dYuJhGN9mOfnRpuNJPJv4SQXD1hQ-FknPxM4h_ocnQMGEdfCqPYVBl6Za-w5wfBJFP1C', 1, 'passport', 'A25208162', '[\"2023-03-29-6423de02f1977.png\"]', 1),
(5, 'Mohamed', 'Salah', '+20', '+201126224664', NULL, '2023-03-29-642491e204b82.png', 2, NULL, '$2y$10$qJFk9CK29aH5uUR.9xaS3e8.6jTLPzY9sXOdr.r5KqV4S/d.9Y61.', 0, 0, NULL, '2023-03-29 19:30:42', '2023-03-30 09:17:59', '2023-03-30 09:17:59', '535618', NULL, 'male', 'EJUST', 0, 'fRG59xJJQ16oI084Gbhhft:APA91bGmaQFv4gW-uhbD83iGq8xog2cXoc1NJnOnCOtlwaDU7JaO_2zs2KnDJxbfufxw_vr8Tym9-0v-f-zL6o76YvkoeydHkQDiAGuTGynDscd8rXARuf2G3jSNZF2HsoFxChoYqkJk', 1, 'nid', '30201100105578', '[\"2023-03-29-6424924b802df.png\"]', 1),
(6, 'EJUST', 'Cafe', '+20', '+201001071049', NULL, '2023-03-30-6424f53c55582.png', 1, NULL, '$2y$10$WkuO3cQm7UcI/R4S2GFEOOWO7VXqwE1exEguhW8huRbFVX0rIZUjK', 0, 0, NULL, '2023-03-30 02:34:36', '2023-03-30 03:46:54', '2023-03-30 03:46:54', '633862', NULL, 'male', 'Admin', 0, 'cG3NUptWQjOffnJplID2E3:APA91bEHy1aa2xbUEApC5-jMPM-HqXyGeudiwwk0asCDLYFP3RXuL5Zsrh56RjMfJuQ1WbGciOju3yIpsw4_yu9XDPA_idfz3bZrz1OQP5uTmA918zcJzRzsIXH9FGwe-UGieH-lIumd', 1, 'nid', 'A25208162', '[\"2023-03-30-64250158b3b0e.png\"]', 1),
(7, 'Geeksy', 'Startup', '+20', '+201112161029', 'Info@geeksy.tech', '2023-03-30-6424f796c1180.png', 3, NULL, '$2y$10$10CJTXPFlVdXpjh4wVu8EudMpBjNJAqWCQwnqFo9GAIK/Scgv2s5K', 0, 0, NULL, '2023-03-30 02:44:38', '2023-03-31 15:23:44', NULL, '770603', NULL, NULL, NULL, 0, NULL, 1, 'passport', '3243434', '[\"2023-03-30-6424f796c1a00.png\",\"2023-03-30-6424f796c1b89.png\"]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_log_histories`
--

CREATE TABLE `user_log_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `device_model` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_log_histories`
--

INSERT INTO `user_log_histories` (`id`, `ip_address`, `device_id`, `browser`, `os`, `device_model`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 00:35:05', '2023-03-31 03:52:17'),
(2, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 00:39:15', '2023-03-31 03:52:17'),
(3, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 02:39:21', '2023-03-31 03:52:17'),
(4, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 02:59:52', '2023-03-31 03:52:17'),
(5, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 03:01:31', '2023-03-31 03:52:17'),
(6, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 03:27:33', '2023-03-31 03:52:17'),
(7, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 03:28:37', '2023-03-31 03:52:17'),
(8, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'iPhone', 2, 0, '2023-03-14 03:40:54', '2023-03-31 03:52:17'),
(9, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 03:47:19', '2023-03-31 03:52:17'),
(10, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 03:51:28', '2023-03-31 03:52:17'),
(11, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 03:54:49', '2023-03-31 03:52:17'),
(12, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 04:00:50', '2023-03-31 03:52:17'),
(13, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 04:13:36', '2023-03-31 03:52:17'),
(14, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 04:15:13', '2023-03-31 03:52:17'),
(15, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 04:17:01', '2023-03-31 03:52:17'),
(16, '41.33.62.102', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 10:21:11', '2023-03-31 03:52:17'),
(17, '41.33.62.102', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'iPhone', 2, 0, '2023-03-14 10:29:59', '2023-03-31 03:52:17'),
(18, '41.33.62.100', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 14:20:40', '2023-03-31 03:52:17'),
(19, '196.159.18.169', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-14 16:39:17', '2023-03-31 03:52:17'),
(20, '196.159.18.169', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-15 05:30:17', '2023-03-31 03:52:17'),
(21, '156.205.23.209', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-16 14:12:12', '2023-03-31 03:52:17'),
(22, '156.205.23.209', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-16 14:12:35', '2023-03-31 03:52:17'),
(23, '156.205.23.209', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'iPhone', 2, 0, '2023-03-16 14:14:26', '2023-03-31 03:52:17'),
(24, '156.205.23.209', 'd18ea07980e8ace2', NULL, 'android', 'OPPO CPH1907', 2, 0, '2023-03-16 14:34:07', '2023-03-31 03:52:17'),
(25, '156.205.23.209', 'd18ea07980e8ace2', NULL, 'android', 'OPPO CPH1907', 2, 0, '2023-03-16 14:34:53', '2023-03-31 03:52:17'),
(26, '156.205.23.209', '4EC9734F-168A-4B50-88DC-0C7C6DF5EA0F', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-16 14:36:49', '2023-03-31 03:52:17'),
(27, '156.205.23.209', 'd18ea07980e8ace2', NULL, 'android', 'OPPO CPH1907', 2, 0, '2023-03-16 14:37:29', '2023-03-31 03:52:17'),
(28, '156.205.23.209', 'd18ea07980e8ace2', NULL, 'android', 'OPPO CPH1907', 2, 0, '2023-03-16 14:49:56', '2023-03-31 03:52:17'),
(29, '156.205.23.209', 'd18ea07980e8ace2', NULL, 'android', 'OPPO CPH1907', 2, 0, '2023-03-16 14:50:26', '2023-03-31 03:52:17'),
(30, '102.41.64.159', 'd18ea07980e8ace2', NULL, 'android', 'OPPO CPH1907', 2, 0, '2023-03-18 08:52:25', '2023-03-31 03:52:17'),
(31, '102.41.64.159', 'd18ea07980e8ace2', NULL, 'android', 'OPPO CPH1907', 2, 0, '2023-03-20 10:21:17', '2023-03-31 03:52:17'),
(32, '41.33.62.100', '92D19EEC-D0A7-4CB9-AE42-3F8EA3F861DC', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-21 02:09:45', '2023-03-31 03:52:17'),
(33, '41.33.62.100', '92D19EEC-D0A7-4CB9-AE42-3F8EA3F861DC', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-21 02:10:47', '2023-03-31 03:52:17'),
(34, '41.33.62.100', '92D19EEC-D0A7-4CB9-AE42-3F8EA3F861DC', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-21 02:13:55', '2023-03-31 03:52:17'),
(35, '41.33.62.100', '92D19EEC-D0A7-4CB9-AE42-3F8EA3F861DC', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-21 02:17:52', '2023-03-31 03:52:17'),
(36, '41.33.62.100', '92D19EEC-D0A7-4CB9-AE42-3F8EA3F861DC', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-21 02:18:53', '2023-03-31 03:52:17'),
(37, '41.33.62.100', '92D19EEC-D0A7-4CB9-AE42-3F8EA3F861DC', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-21 02:28:33', '2023-03-31 03:52:17'),
(38, '41.33.62.100', '92D19EEC-D0A7-4CB9-AE42-3F8EA3F861DC', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-21 02:29:39', '2023-03-31 03:52:17'),
(39, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 2, 0, '2023-03-27 18:45:31', '2023-03-31 03:52:17'),
(40, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 2, 0, '2023-03-27 18:45:58', '2023-03-31 03:52:17'),
(41, '41.33.62.100', '5B16D32C-2119-48CA-99CA-B276DA1E44CF', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-27 18:49:25', '2023-03-31 03:52:17'),
(42, '41.33.62.100', '5B16D32C-2119-48CA-99CA-B276DA1E44CF', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-27 18:53:56', '2023-03-31 03:52:17'),
(43, '41.33.62.100', '5B16D32C-2119-48CA-99CA-B276DA1E44CF', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-27 19:11:18', '2023-03-31 03:52:17'),
(44, '41.33.62.100', '5B16D32C-2119-48CA-99CA-B276DA1E44CF', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-28 01:56:32', '2023-03-31 03:52:17'),
(45, '41.33.62.100', '5B16D32C-2119-48CA-99CA-B276DA1E44CF', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 05:18:45', '2023-03-31 03:52:17'),
(46, '41.33.62.100', '5B16D32C-2119-48CA-99CA-B276DA1E44CF', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 05:25:58', '2023-03-31 03:52:17'),
(47, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 05:35:04', '2023-03-31 03:52:17'),
(48, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'null iPhone', 4, 0, '2023-03-29 06:39:25', '2023-03-31 02:36:50'),
(49, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'iPhone', 2, 0, '2023-03-29 06:58:02', '2023-03-31 03:52:17'),
(50, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'iPhone', 2, 0, '2023-03-29 14:05:12', '2023-03-31 03:52:17'),
(51, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 18:16:51', '2023-03-31 03:52:17'),
(52, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-29 19:08:49', '2023-03-31 02:36:50'),
(53, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-29 19:11:44', '2023-03-31 02:36:50'),
(54, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 19:17:16', '2023-03-31 03:52:17'),
(55, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 19:17:35', '2023-03-31 03:52:17'),
(56, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-29 19:22:33', '2023-03-31 02:36:50'),
(57, '41.33.62.100', '5f68cf1d8ef3ee6f', NULL, 'android', 'Xiaomi M2101K9AG', 5, 0, '2023-03-29 19:31:08', '2023-03-30 09:17:59'),
(58, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-29 19:38:18', '2023-03-31 02:36:50'),
(59, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-29 20:02:30', '2023-03-31 02:36:50'),
(60, '41.33.62.100', '88A6F3BC-13C2-41FF-973A-49ED500C466E', NULL, 'ios', 'iPhone', 2, 0, '2023-03-29 20:20:39', '2023-03-31 03:52:17'),
(61, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 20:50:10', '2023-03-31 03:52:17'),
(62, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 20:56:28', '2023-03-31 03:52:17'),
(63, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 21:01:35', '2023-03-31 03:52:17'),
(64, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 21:04:47', '2023-03-31 03:52:17'),
(65, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-29 21:07:30', '2023-03-31 03:52:17'),
(66, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-30 02:31:22', '2023-03-31 03:52:17'),
(67, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'iPhone', 2, 0, '2023-03-30 02:35:11', '2023-03-31 03:52:17'),
(68, '41.33.62.100', 'd4e0663ae537828f', NULL, 'android', 'Android SDK built for x86', 6, 0, '2023-03-30 03:22:49', '2023-03-30 03:46:51'),
(69, '41.33.62.100', 'd4e0663ae537828f', NULL, 'android', 'Android SDK built for x86', 6, 0, '2023-03-30 03:24:32', '2023-03-30 03:46:51'),
(70, '41.33.62.100', 'd4e0663ae537828f', NULL, 'android', 'Android SDK built for x86', 6, 0, '2023-03-30 03:33:06', '2023-03-30 03:46:51'),
(71, '41.33.62.100', 'd4e0663ae537828f', NULL, 'android', 'Android SDK built for x86', 6, 0, '2023-03-30 03:37:24', '2023-03-30 03:46:51'),
(72, '41.33.62.100', 'd4e0663ae537828f', NULL, 'android', 'Android SDK built for x86', 6, 0, '2023-03-30 03:42:32', '2023-03-30 03:46:51'),
(73, '41.33.62.100', 'd4e0663ae537828f', NULL, 'android', 'Android SDK built for x86', 6, 1, '2023-03-30 03:46:51', '2023-03-30 03:46:51'),
(74, '156.212.251.85', '5f68cf1d8ef3ee6f', NULL, 'android', 'Xiaomi M2101K9AG', 5, 1, '2023-03-30 09:17:59', '2023-03-30 09:17:59'),
(75, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-30 12:07:04', '2023-03-31 03:52:17'),
(76, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-30 12:07:25', '2023-03-31 03:52:17'),
(77, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'iPhone', 2, 0, '2023-03-30 12:14:22', '2023-03-31 03:52:17'),
(78, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-30 15:39:23', '2023-03-31 02:36:50'),
(79, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-30 22:13:50', '2023-03-31 03:52:17'),
(80, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-30 22:24:30', '2023-03-31 03:52:17'),
(81, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-30 22:37:23', '2023-03-31 02:36:50'),
(82, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'iPhone', 2, 0, '2023-03-31 00:58:12', '2023-03-31 03:52:17'),
(83, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-31 00:59:15', '2023-03-31 03:52:17'),
(84, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'iPhone', 2, 0, '2023-03-31 01:04:29', '2023-03-31 03:52:17'),
(85, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'null iPhone', 2, 0, '2023-03-31 01:06:32', '2023-03-31 03:52:17'),
(86, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:42:51', '2023-03-31 02:36:50'),
(87, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:43:41', '2023-03-31 02:36:50'),
(88, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:44:36', '2023-03-31 02:36:50'),
(89, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:46:14', '2023-03-31 02:36:50'),
(90, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:46:42', '2023-03-31 02:36:50'),
(91, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:47:10', '2023-03-31 02:36:50'),
(92, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:49:26', '2023-03-31 02:36:50'),
(93, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:52:53', '2023-03-31 02:36:50'),
(94, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:53:17', '2023-03-31 02:36:50'),
(95, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 0, '2023-03-31 01:53:45', '2023-03-31 02:36:50'),
(96, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'iPhone', 2, 0, '2023-03-31 02:35:40', '2023-03-31 03:52:17'),
(97, '196.159.75.189', 'a5f4e1bec12a5078', NULL, 'android', 'Redmi M2101K6G', 4, 1, '2023-03-31 02:36:50', '2023-03-31 02:36:50'),
(98, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'iPhone', 2, 0, '2023-03-31 03:35:12', '2023-03-31 03:52:17'),
(99, '41.33.62.100', '5E83ACA1-FF80-44AA-B7EA-6FA5E0C962E3', NULL, 'ios', 'iPhone', 2, 1, '2023-03-31 03:52:17', '2023-03-31 03:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` double(14,2) NOT NULL DEFAULT 0.00,
  `request_status` varchar(255) NOT NULL DEFAULT 'pending',
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `sender_note` varchar(255) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL,
  `withdrawal_method_id` bigint(20) DEFAULT NULL,
  `withdrawal_method_fields` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_money`
--
ALTER TABLE `e_money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_topics`
--
ALTER TABLE `help_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linked_websites`
--
ALTER TABLE `linked_websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_phone_index` (`phone`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purposes`
--
ALTER TABLE `purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_money`
--
ALTER TABLE `request_money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log_histories`
--
ALTER TABLE `user_log_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `e_money`
--
ALTER TABLE `e_money`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_topics`
--
ALTER TABLE `help_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `linked_websites`
--
ALTER TABLE `linked_websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purposes`
--
ALTER TABLE `purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `request_money`
--
ALTER TABLE `request_money`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_log_histories`
--
ALTER TABLE `user_log_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

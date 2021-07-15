import 'package:flutter/material.dart';
import 'package:material_kit_flutter/chef-screens/dashboard.dart';
import 'package:material_kit_flutter/screens/address.dart';
import 'package:material_kit_flutter/screens/chef-detail.dart';
import 'package:material_kit_flutter/screens/date-service-detail.dart';
import 'package:material_kit_flutter/screens/detail-user-order.dart';
import 'package:material_kit_flutter/screens/home.dart';
import 'package:material_kit_flutter/screens/login.dart';
import 'package:material_kit_flutter/screens/party-service-detail.dart';
import 'package:material_kit_flutter/screens/party-service.dart';
import 'package:material_kit_flutter/screens/register.dart';
import 'package:material_kit_flutter/screens/user-profile.dart';
import 'package:material_kit_flutter/screens/voucher-add-payment.dart';
import 'package:material_kit_flutter/screens/voucher-review-user-profile.dart';
import 'package:material_kit_flutter/screens/your-booking-card-detail.dart';

// screens
import 'screens/home.dart';
import 'screens/profile.dart';
import 'screens/settings.dart';
import 'screens/components.dart';
import 'screens/onboarding.dart';
import 'screens/change-password.dart';
import 'screens/sendotp.dart';
import 'screens/chef-list.dart';
import 'screens/asian-chef-list.dart';
import 'screens/detail-user-order.dart';
import 'screens/pakages-service.dart';
import 'screens/select-service-detail.dart';
import 'screens/booking-time.dart';
import 'screens/payment-method.dart';
import 'screens/your_booking_card.dart';
import 'screens/success-alert.dart';
import 'screens/modal-list-food.dart';
import 'screens/voucher-review.dart';
import 'screens/voucher-add-payment.dart';
import 'chef-screens/chef-home.dart';
import 'chef-screens/chef-user-accepted-detail.dart';
import 'chef-screens/chef-history.dart';
import 'screens/history.dart';
import 'chef-screens/chef-setting-time.dart';
import 'chef-screens/chef-waited-order-detail.dart';
import 'chef-screens/chef-success-alert.dart';
import 'chef-screens/chef-profile.dart';
import 'chef-screens/chef-wallet.dart';
import 'screens/danh-gia.dart';
import 'screens/booked-card-with-rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Chef for Everyone",
        debugShowCheckedModeBanner: false,
        initialRoute: "/login",
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/login": (BuildContext context) => new LoginPage(),
          "/sendotp": (BuildContext context) => new SendOtp(),
          "/change-password": (BuildContext context) => new ChangePassword(),
          "/register": (BuildContext context) => new RegisterPage(),
          "/home": (BuildContext context) => new MainHome(),
          "/components": (BuildContext context) => new Components(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),
          "/chef-list": (BuildContext context) => new ChefList(),
          "/chef-detail": (BuildContext context) => new CheftDetail(),
          "/user-profile": (BuildContext context) => new Booking(),
          "/asian-chef-list": (BuildContext context) => new AsianChefList(),
          "/pakages-service": (BuildContext context) => new PakageService(),
          "/party-service": (BuildContext context) => new PartyService(),
          "/select-service-detail": (BuildContext context) =>
              new SelectServiceDetail(),
          "/date-service-detail": (BuildContext context) =>
              new DateServiceDetail(),
          "/party-service-detail": (BuildContext context) =>
              new PartyServiceDetail(),
          "/booking-time": (BuildContext context) => new BookingTime(),
          "/address": (BuildContext context) => new Address(),
          "/payment-method": (BuildContext context) => new PaymentMethod(),
          "/your_booking_card": (BuildContext context) => new YourBookingCard(),
          "/your-booking-card-detail": (BuildContext context) =>
              new YourBookingCardDetail(),
          "/user-profile": (BuildContext context) => new UserProfile(),
          "/success-alert": (BuildContext context) => new PopupSuccess(),
          "/modal-list-food": (BuildContext context) => new ModalList(),
          "/voucher-review": (BuildContext context) => new VoucherReview(),
          "voucher-add-payment": (BuildContext context) =>
              new VoucherAddPayment(),
          "/voucher-review-user-profile": (BuildContext context) =>
              new VoucherReviewUserProfile(),
          "/voucher-add-payment": (BuildContext context) =>
              new VoucherAddPayment(),
          "/chef-home": (BuildContext context) => new MenuDashboardPage(),
          "/chef-user-accepted-detail": (BuildContext context) =>
              new ChefUserAcceptedDetail(),
          "/chef-history": (BuildContext context) => new ChefHistory(),
          "/history": (BuildContext context) => new UserHistory(),
          "/chef-setting-time": (BuildContext context) => new ChefSettingTime(),
          "/chef-waited-order-detail": (BuildContext context) =>
              new ChefWaitedOrderDetail(),
          "/chef-success-alert": (BuildContext context) =>
              new ChefPopupSuccess(),
          "/chef-profile": (BuildContext context) => new ChefProfile(),
          "/chef-wallet": (BuildContext context) => new ChefWallet(),
          "/danh-gia": (BuildContext context) => new DanhGia(),
          "/booked-card-with-rating": (BuildContext context) =>
              new BookedCardWithRating(),
        });
  }
}

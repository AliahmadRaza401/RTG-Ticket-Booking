import 'package:rtg/screens/add_tickets.dart';
import 'package:rtg/screens/all_tickets.dart';
import 'package:rtg/screens/attraction.dart';
import 'package:rtg/screens/bus_ticket.dart';
import 'package:rtg/screens/calendar.dart';
import 'package:rtg/screens/edit_profile.dart';
import 'package:rtg/screens/esim.dart';
import 'package:rtg/screens/explore.dart';
import 'package:rtg/screens/flight_booked.dart';
import 'package:rtg/screens/flight_info.dart';
import 'package:rtg/screens/flight_ticket_details.dart';
import 'package:rtg/screens/homepage.dart';
import 'package:rtg/screens/hotel_reservation_details.dart';
import 'package:rtg/screens/maps.dart';
import 'package:rtg/screens/resort_details.dart';
import 'package:rtg/screens/restaurant.dart';
import 'package:rtg/screens/history.dart';
import 'package:rtg/screens/restaurant_booked.dart';

import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/homescreen', page: () => const HomeScreen()),
  GetPage(name: '/', page: () => HomePage()),
  GetPage(name: '/addtickets', page: () => const AddTickets()),
  GetPage(name: '/flightbooked', page: () => const FlightBooked()),
  GetPage(name: '/flightinfo', page: () => const FlightInfo()),
  GetPage(name: '/resortdetails', page: () => const ResortDetails()),
  GetPage(name: '/restaurant', page: () => const Restaurant()),
  GetPage(name: '/maps', page: () => Maps()),
  GetPage(name: '/explore', page: () => const Explore()),
  GetPage(name: '/esim', page: () => const Esim()),
  GetPage(name: '/history', page: () => History()),
  GetPage(name: '/flightticketdetails', page: () => FlightTicketDetails()),
  GetPage(name: '/alltickets', page: () => const AllTickets()),
  GetPage(name: '/editprofile', page: () => const EditProfile()),
  GetPage(name: '/busticket', page: () => const BusTicket()),
  GetPage(name: '/calendar', page: () => const Calendar()),
  GetPage(name: '/attraction', page: () => const Attraction()),
  GetPage(name: '/hotelreservation', page: () => HotelReservationDetails()),
  GetPage(name: '/restaurantbooked', page: () => RestaurantBooked()),
];

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatelessWidget {
  Calendario({Key? key}) : super(key: key);
  final DateTime _firstDay = DateTime.utc(2022, 03, 10);
  final DateTime _lastDay = DateTime.utc(2030, 03, 10);
  final DateTime _focusDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
      child: TableCalendar(
        focusedDay: _focusDay,
        firstDay: _firstDay,
        lastDay: _lastDay, headerVisible: false,
        // headerStyle: const HeaderStyle(
        //   // titleTextFormatter: (date, locale) =>
        //   //     DateFormat.MMMM(locale).format(date).toUpperCase(),
        //   titleTextStyle: TextStyle(
        //     color: Colors.white,
        //     fontSize: 20,
        //   ),
        // ),
        calendarFormat: CalendarFormat.week,
        startingDayOfWeek: StartingDayOfWeek.monday,
        daysOfWeekHeight: 22,

        //calendario style
        calendarStyle: CalendarStyle(
          // finais de semana
          weekendDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 31, 146, 140)),
          weekendTextStyle: TextStyle(color: Colors.teal[50]),
          //finais de semana

          //todos os dias da semana
          defaultDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 31, 146, 140)),
          defaultTextStyle: TextStyle(color: Colors.teal[50]),
          //DIAS PASSADOS BACKGROUND
          disabledDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 31, 146, 140)),
          disabledTextStyle: TextStyle(
            color: Colors.teal[50],
          ),

          ///DIAS PASSADO

          // holidayTextStyle: TextStyle(color: Colors.white),
          todayDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          todayTextStyle: TextStyle(color: Colors.teal[600]),
        ),

        // dias da semana style header qua qui
        daysOfWeekStyle: const DaysOfWeekStyle(
          //finais de semana quar quin sex .. não achei aqui as cores
          weekendStyle: TextStyle(
            color: Colors.red,
            fontSize: 18,
          ),

          //DIAS DA SEMANA STYLE
          weekdayStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        locale: "pt_BR",
      ),
    );
  }
}

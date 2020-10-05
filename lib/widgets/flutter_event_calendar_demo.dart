import 'package:flutter/material.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';

class FlutterEventCalendardemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EventCalendar(
        headerWeekDayStringType: 'full',
        events: [
          Event(
            title: 'Laravel Event',
            description:
                'The largest Laravel event of the year, streamed directly to you. We’ve put together a full day of talks featuring some of Laravel’s brightest minds, and streaming them directly to your home or office.',
            dateTime: '2020-10-10 20:00',
          ),
          Event(
            title: 'Vue.js Event',
            description:
                'Friday 18th September exclusive news from Evan You Live on our Youtube channel.' +
                    'This is FREE to the whole community & part of the #vuejsglobal conference experience.' +
                    'Subscribe Today to set up your notification.',
            dateTime: '2020-10-11 22:00',
          ),
        ],
      ),
    );
  }
}

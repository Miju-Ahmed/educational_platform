class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      {required this.date,
      required this.monthName,
      required this.subjectName,
      required this.dayName,
      required this.time});
}

List<DataSheet> datasheet = [
  DataSheet(date: 11, monthName: 'JAN', subjectName: 'Web\nEngineering', dayName: 'Monday', time: '10:00AM'),
  DataSheet(date: 12, monthName: 'JAN', subjectName: 'Software\nEngineering', dayName: 'Tuesday', time: '09:00AM'),
  DataSheet(date: 13, monthName: 'JAN', subjectName: 'DBMS', dayName: 'Wednessday', time: '10:00AM'),
  DataSheet(date: 14, monthName: 'JAN', subjectName: 'Android\nApplication', dayName: 'Thursday', time: '11:00AM'),
  DataSheet(date: 17, monthName: 'JAN', subjectName: 'Compiler\nDesign', dayName: 'Sunday', time: '12:00PM'),
  DataSheet(date: 18, monthName: 'JAN', subjectName: 'Communication\nEngineering', dayName: 'Monday', time: '10:00AM'),
  DataSheet(date: 19, monthName: 'JAN', subjectName: 'Ethics', dayName: 'Tuesday', time: '09:00AM'),
];

class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(
      {required this.subjectName,
      required this.topicName,
      required this.assignDate,
      required this.lastDate,
      required this.status});
}

List<AssignmentData> assignment = [
  AssignmentData(
      subjectName: 'DBMS',
      topicName: 'ER Diagram',
      assignDate: '12 Nov 2023',
      lastDate: '12 Dec 2023',
      status: 'Submitted'),
  AssignmentData(
      subjectName: 'Android Application',
      topicName: 'Educational App',
      assignDate: '05 Oct 2023',
      lastDate: '01 Jan 2024',
      status: 'Pending'),
  AssignmentData(
      subjectName: 'Web Engineering',
      topicName: 'Book Shop',
      assignDate: '15 Nov 2023',
      lastDate: '28 Nov 2023',
      status: 'Not Submitted'),
  AssignmentData(
      subjectName: 'Software\nEngineering',
      topicName: 'Study Bee',
      assignDate: '07 Sept 2023',
      lastDate: '15 Dec 2023',
      status: 'Pending'),
];

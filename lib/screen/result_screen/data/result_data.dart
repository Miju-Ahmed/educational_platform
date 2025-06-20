class ResultData {
  final String subjectName;

  final int totalMarks;
  final int obtainedMarks;
  final String grade;

  ResultData({
    required this.subjectName,
    required this.totalMarks,
    required this.obtainedMarks,
    required this.grade,
  });
}

List<ResultData> result = [
  ResultData(
    subjectName: 'Android Application',
    totalMarks: 100,
    obtainedMarks: 95,
    grade: 'A+',
  ),
  ResultData(
    subjectName: 'DBMS',
    totalMarks: 100,
    obtainedMarks: 98,
    grade: 'A+',
  ),
  ResultData(
    subjectName: 'Software Engineering',
    totalMarks: 100,
    obtainedMarks: 50,
    grade: 'D',
  ),
  ResultData(
    subjectName: 'Web Engineering',
    totalMarks: 100,
    obtainedMarks: 98,
    grade: 'A+',
  ),
  ResultData(
    subjectName: 'Compiler Design',
    totalMarks: 100,
    obtainedMarks: 90,
    grade: 'A+',
  ),
  ResultData(
    subjectName: 'Communication Engineering',
    totalMarks: 50,
    obtainedMarks: 44,
    grade: 'A+',
  ),
  ResultData(
    subjectName: 'Ethics',
    totalMarks: 50,
    obtainedMarks: 35,
    grade: 'A-',
  ),
];

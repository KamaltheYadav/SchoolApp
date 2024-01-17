class AssignmentData {
  late final String subjectName;
  late final String topicName;
  late final String assignDate;
  late final String lastDate;
  late final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData('Math', 'Statistics', "8 Jan 2024", "3rd Aug", "Pending"),
  AssignmentData(
      'Network', 'Local Area Network', "4 Jan 2024", "3rd Aug", "Submitted"),
  AssignmentData(
      'Artictechture', 'Microssprocessor', "22nd May", "3rd Aug", "Submitted"),
  AssignmentData(
      'Computer', 'Fundamentals', "22nd May", "3rd Aug", "Not Submitted"),
  AssignmentData('Eccomerce', 'Trademarl', "22nd May", "3rd Aug", "Pending"),
  AssignmentData('Internet Technology', 'Hosting Services', "22nd May",
      "3rd Aug", "Submitted"),
];

# University Portal Project

## Overview
The University Portal Project is designed to provide a comprehensive platform for students, teachers, and administrators to manage various academic and administrative tasks efficiently. The system allows students to view their numbers and attendance, register for courses, and provide feedback to teachers. Teachers can grade students and mark their attendance, while administrators can assign students to sections and view various types of attendance reports.

## Features
### For Students
- **View Attendance**: Students can view their attendance records for all enrolled courses.
- **View Grades**: Students can check their grades for assignments, quizzes, and exams.
- **Course Registration**: Students can register for courses each semester.
- **Provide Feedback**: Students can give feedback on their teachers, including ratings and comments.

### For Teachers
- **Mark Attendance**: Teachers can record attendance for their courses.
- **Grade Students**: Teachers can input grades for students' assignments, quizzes, and exams.
- **View Feedback**: Teachers can view feedback provided by students to improve their teaching methods.

### For Administrators
- **Assign Sections**: Administrators can assign students to different sections based on their courses.
- **View Attendance Reports**: Administrators can generate and view detailed attendance reports.
- **Manage Users**: Administrators can manage student, teacher, and course information.

## Entity-Relationship Diagram (ERD)
The project is built around several core entities:

1. **User**
   - Attributes: `ID`, `Password`, `Type`
   - Superclass for `Admin`, `Faculty`, and `Students`. Used for login.

2. **Personal Info**
   - Attributes: `ID`, `Address`, `Phone`, `Email`, `First Name`, `Middle Name`, `Last Name`
   - Contains basic information common to all users.

3. **Faculty**
   - Attributes: `ID`, `Experience`, `Joining Date`, `Position`, `Qualification`, `Department`
   - Stores professional information of teachers.

4. **Student**
   - Attributes: `ID`, `Degree`, `Batch`, `Department`, `Semester`
   - Stores academic credentials of students.

5. **Course**
   - Attributes: `ID`, `Name`, `PreReq`, `Credits`
   - Information about the courses offered by the university.

6. **Section**
   - Attributes: `ID`, `Name`, `Department`, `Semester`
   - Stores information about different sections in which courses are taught.

7. **Evaluation**
   - Attributes: `ID`, `Obtained Marks`, `Total Marks`, `Average`, `Min`, `Max`, `Type`, `Weightage`
   - Records academic progress of students in different courses.

8. **Attendance**
   - Attributes: `ID`, `Date`, `Status`, `Hours`
   - Records the attendance of students.

9. **Teaches**
   - Attributes: `Teacher`, `Course`
   - Links teachers with the courses they teach.

10. **Studies**
    - Attributes: `Student`, `Course`
    - Links students with the courses they are enrolled in.

11. **Taught in**
    - Attributes: `Section`, `Course`
    - Links sections with the courses taught in them.

12. **Register**
    - Attributes: `ID`, `Student`, `Course`, `Section`, `PreReq`, `Semester`
    - Manages course registration for students.

13. **Feedback**
    - Attributes: `ID`, `Student`, `Teacher`, `Ratings`, `Comments`
    - Stores feedback from students about teachers.

14. **Transcript**
    - Attributes: `ID`, `Points`, `Remarks`, `Grade`, `Course`
    - Contains data necessary for generating student transcripts.

## Installation
1. Clone the repository from GitHub:
   ```sh
   git clone https://github.com/yourusername/university-portal.git
   ```
2. Navigate to the project directory:
   ```sh
   cd university-portal
   ```
3. Install the required dependencies:
   ```sh
   npm install
   ```
4. Configure the database connection in the `config` file.

5. Run the application:
   ```sh
   npm start
   ```

## Usage
1. **Login**: Users can log in using their credentials.
2. **Dashboard**: Upon logging in, users will be directed to their respective dashboards (student, teacher, admin).
3. **Navigation**: Use the sidebar to navigate through different features like attendance, grades, course registration, etc.
4. **Feedback**: Students can provide feedback through the feedback form available in their dashboard.

## Contributing
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

## Contact
For any questions or feedback, please contact:
- Muhammad Humayun Malik (21I-2562)
- Zian Ahmed (21I-0503)
- Mati-ur-Rehman (21I-0872)

---

This README provides a detailed overview of the University Portal Project, its features, the underlying data structure as depicted in the ERD, installation instructions, and usage guidelines. For more technical details, refer to the project documentation.

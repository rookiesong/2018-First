class Course{
    private String courseName;
    private String [] students=new String[100];
    private int numberOfStudents;

    Course(String newcourseName){
        this.courseName=newcourseName;
    }
    public String getCourseName(){
        return courseName;
    }
    public void addStudent(String student){
        students[numberOfStudents]=student;
        numberOfStudents++;
    }
    public void dropStudent(String student){
        int i=0;
        for(;i<numberOfStudents;i++)
        {
            if(students[i]==student)
                break;
        }
        for(int j=i;j<numberOfStudents-1;j++)
        {
            students[j]=students[j+1];
        }
        students[numberOfStudents-1]=null;
        numberOfStudents--;
    }
    public String[] getStudents(){
        return students;
    }
    public int getNumberOfStudents() {
        return numberOfStudents;
    }
}

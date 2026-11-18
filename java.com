
import java.util.Scanner;

public class StudentManagement {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("===== Student Management System =====");

        System.out.print("Enter Student Name: ");
        String name = sc.nextLine();

        System.out.print("Enter Roll Number: ");
        int rollNo = sc.nextInt();

        System.out.print("Enter Marks: ");
        double marks = sc.nextDouble();

        System.out.println("\n===== Student Details =====");
        System.out.println("Name: " + name);
        System.out.println("Roll Number: " + rollNo);
        System.out.println("Marks: " + marks);

        if (marks >= 40) {
            System.out.println("Result: PASS");
        } else {
            System.out.println("Result: FAIL");
        }

        sc.close();
    }
}

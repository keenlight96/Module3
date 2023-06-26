package management;

import java.util.ArrayList;

public class Management {
    public static ArrayList<Employee> employees = new ArrayList<>();
    static {
        employees.add(new Employee(1, "Long", 27));
        employees.add(new Employee(2, "Duyên", 26));
    }

    public static Employee getEmployeeById(int id) {
        for (Employee e :
                employees) {
            if (e.getId() == id)
                return e;
        }
        return null;
    }
}

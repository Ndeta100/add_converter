import java.util.ArrayList;


public class Main {
    public static void main(String[] args) {
        int number = 5;
        ArrayList<String> array = new ArrayList<>();


        for (int i = 1; i < number + 1; i++) {

            if (i % 3 == 0) {

                array.add("fizz");
            }
            if (i % 5 == 0) {

                array.add("buzz");

            if (i % 3 == 0 && i % 5 == 0) {
                    array.add("FizzBuzz");
                }
            } else
                array.add(String.valueOf(i));
        }

        System.out.println(array);


    }

}






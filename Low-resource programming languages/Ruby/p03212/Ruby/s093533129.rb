import java.util.Arrays;
import java.util.Scanner;

class Main{
    static long N = 0;
    static int count = 0;
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        N = sc.nextLong();
        System.out.println(dif("0"));
    }
    static int dif(String s){

        if(Long.parseLong(s) > N){
            return 0;
        }

        if(s.contains("3") && s.contains("5") && s.contains("7")){
            count += 1;
        }
        dif(s + "7");
        dif(s + "5");
        dif(s + "3");

        return count;
    }

}
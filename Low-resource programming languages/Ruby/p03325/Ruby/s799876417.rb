import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int[] a = new int[n];
		for(int i = 0; i < n; i++) {
			a[i] = sc.nextInt();
		}
		int cnt = 0;
		boolean b = true;
		for(int i = 2;b; i *= 2) {
			b = false;
			for(int j = 0; j < n; j++) {
				if(a[j] % i == 0) {
					b = true;
					cnt++;
				}
			}
		}
		System.out.println(cnt);
	}

}

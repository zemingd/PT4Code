
import java.util.*;

public class Main {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int h = sc.nextInt();
		int w = sc.nextInt();
		String s[][] = new String[h + 2][w + 2];
		Arrays.fill(s[0], ".");
		Arrays.fill(s[h + 1], ".");
		for(int i = 1; i <= h; i++) {
			s[i] = ("." + sc.next() + ".").split("");
		}
		for(int i = 1; i <= h; i++) {
			for(int j = 1; j <= w; j++) {
				if(s[i][j].equals("#")) {
					if(s[i - 1][j].equals(".")
							&& s[i + 1][j].equals(".")
							&& s[i][j - 1].equals(".")
							&& s[i][j + 1].equals(".")) {
						System.out.println("No");
						return;
					}
				}
			}
		}
		System.out.println("Yes");
	}
}
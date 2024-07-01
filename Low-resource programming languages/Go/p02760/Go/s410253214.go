package main

import "fmt"

func main() {
	var b [3][3]int
	for i:=0; i<3; i++ {
		fmt.Scan(&b[i][0], &b[i][1], &b[i][2],)
	}
	var N int
	fmt.Scan(&N)
	var tmp int
	for i:=0; i<N; i++ {
		fmt.Scan(&tmp)
		for j:=0; j<3; j++ {
			for k:=0; k<3; k++ {
				if(b[j][k] == tmp) {
					b[j][k] = 0
				}
			}
		}
	}

	for i:=0; i<3; i++ {
		if((b[i][0] == b[i][1] && b[i][1] == b[i][2]) || (b[0][i] == b[1][i] && b[1][i] == b[2][i])) {
			fmt.Println("Yes")
			return
		}
	}
	if((b[0][0] == b[1][1] && b[1][1] == b[2][2]) || (b[2][0] == b[1][1] && b[1][1] == b[0][2])) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
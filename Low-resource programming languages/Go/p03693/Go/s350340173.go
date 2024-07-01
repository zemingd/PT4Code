package main

import "fmt"

func main() {
	var A, B, C int
	fmt.Scanf("%d %d %d", &A, &B, &C)

	l := 100*A + 10*B + C

	if l%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}

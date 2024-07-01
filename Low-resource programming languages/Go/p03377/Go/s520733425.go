package main

import "fmt"

func main() {
	var A, B, X int

	fmt.Scan(&A, &B, &X)

	if (A+B)-X > 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

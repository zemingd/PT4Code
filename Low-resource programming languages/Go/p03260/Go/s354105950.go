package main

import "fmt"

func main() {

	var A, B int

	fmt.Scan(&A, &B)

	C := A * B

	if C%2 != 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

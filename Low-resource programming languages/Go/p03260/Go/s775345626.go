package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	for i := 1; i <= 3; i++ {
		if (A*B*i)%2 == 1 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")

}

package main

import "fmt"

func main() {
	var N, X int
	fmt.Scan(&N, &X)
	if N*500 >= X {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

package main

import "fmt"

func main() {
	var K, X int
	fmt.Scan(&K)
	fmt.Scan(&X)

	if K*500 >= X {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

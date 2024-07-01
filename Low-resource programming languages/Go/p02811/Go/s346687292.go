package main

import "fmt"

func main() {
	var K, X int
	fmt.Scanf("%d %d", &K, &X)
	money := 500 * K
	if money >= X {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

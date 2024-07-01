package main

import "fmt"

func main() {
	var K int
	var X int

	fmt.Scan(&K, &X)

	if 500*K >= X {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

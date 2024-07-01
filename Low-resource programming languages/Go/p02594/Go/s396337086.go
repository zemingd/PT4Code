package main

import "fmt"

func main() {
	var X int
	fmt.Scan(&X)
	if X >= 30 {
		fmt.Print('Yes')
	}
	fmt.Print('No')
}
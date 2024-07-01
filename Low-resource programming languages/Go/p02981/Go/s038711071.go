package main

import "fmt"

func main() {
	var n, a,b int
	fmt.Scan(&n, &a, &b)
	
	if a * n > b {
		fmt.Println(b)
		return
	}
	fmt.Println(a*n)
	
}

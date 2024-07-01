package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	if n*m%2 == 0 {
		fmt.Print("Even\n")
		return
	}
	fmt.Print("Odd\n")
}

package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	min := a * 2
	max := a * 4
	if b < min || b > max {
		fmt.Print("No")
		return
	}
	if (b-min)%2 != 0 {
		fmt.Print("No")
	} else {
		fmt.Print("Yes")
	}
}

package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if a == b && c != a ||
		b == c && c != a ||
		c == a && a != b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

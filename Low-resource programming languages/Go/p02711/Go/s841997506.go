package main

import "fmt"

func main() {
	var a, c int
	var ans int = 0
	fmt.Scan(&a)
	for i := 0; i < 3; i++ {
		c = a % 10
		if c == 7 {
			ans++
		}
		a = a / 10
	}

	if ans > 0 {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No")
	}
}

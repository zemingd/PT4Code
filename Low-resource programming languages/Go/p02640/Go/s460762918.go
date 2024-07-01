package main

import "fmt"

func main() {
	var x, y int
	fmt.Scanf("%d %d", &x, &y)
	b := y - 2*x
	a := x - b
	if b%2 != 0 || b < 0 || a < 0 {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")

}

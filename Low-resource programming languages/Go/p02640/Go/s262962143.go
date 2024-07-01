package main

import "fmt"

func main() {
	var x, y int
	fmt.Scanf("%d %d", &x, &y)
	b2 := y - 2*x

	if b2%2 != 0 || b2 < 0 {
		fmt.Println("No")
		return
	}
	a := x - b2/2
	if a < 0 {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")

}

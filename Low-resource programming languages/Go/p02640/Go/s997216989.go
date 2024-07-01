package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	if y > x*4 || x*2 > y || y%2 == 1 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}

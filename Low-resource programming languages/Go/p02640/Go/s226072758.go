package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)
	if x*4 >= y && y%2 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

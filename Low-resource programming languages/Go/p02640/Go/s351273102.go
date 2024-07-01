package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	for i := 0; i <= x; i++ {
		if i*2+(x-i)*4 == y {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}

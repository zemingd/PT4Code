package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	for i := 0; i < x; i++ {
		crane := i * 4
		turtle := (x - i) * 2

		if crane+turtle == y {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}

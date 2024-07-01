package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)

	s := r * x - d
	fmt.Println(s)
	for i := 0; i < 9; i++ {
		s = r * s - d
		fmt.Println(s)
	}
}

package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)
	initial := r*x - d
	fmt.Println(initial)
	for i := 1; i < 10; i++ {
		initial = r*initial - d
		fmt.Println(initial)
	}
}

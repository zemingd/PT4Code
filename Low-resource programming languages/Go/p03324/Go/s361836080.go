package main

import "fmt"

func main() {
	d, n := 0, 0
	fmt.Scan(&d, &n)

	ans := 1
	for i := 0; i < d; i++ {
		ans *= 100
	}
	fmt.Println(ans * n)
}

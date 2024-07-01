package main

import "fmt"

func main() {
	var r, D, x int
	fmt.Scanf("%d", &r)
	fmt.Scanf("%d", &D)
	fmt.Scanf("%d", &x)

	for i := 1; i <= 10; i++ {
		x = r * x - D
		fmt.Printf("%d\n", x)
	}
}

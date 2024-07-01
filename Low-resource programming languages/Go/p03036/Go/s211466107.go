package main

import "fmt"

func main() {
	var r, D, x0 int
	fmt.Scanf("%d %d %d", &r, &D, &x0)
	x := x0
	for i := 0; i < 10; i++ {
		x = r*x - D
		fmt.Println(x)
	}
}

package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scanf("%d %d %d", &a, &b, &x)
	out := (b - a) / x
	if a%x != 0 || b%x != 0 {
		out--
	}
	/*
		for i := a; i <= b; i++ {
			if i%x == 0 {
				out++
			}
		}*/
	fmt.Println(out)
}

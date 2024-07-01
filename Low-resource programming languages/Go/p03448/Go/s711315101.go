package main

import "fmt"

func main() {
	var a, b, c, x, a int
	fmt.Scan(&a, &b, &c, &x)
	for ac := 0; ac <= a; ac++ {
		for bc := 0; bc <= b; bc++ {
			for cc := 0; cc <= c; cc++ {
				sum := 500*ac + 100*bc + 50*cc
				if sum == x {
					a++
				}
			}
		}
	}
	fmt.Println(a)
}

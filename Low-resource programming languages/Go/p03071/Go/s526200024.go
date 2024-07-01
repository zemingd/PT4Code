package main

import "fmt"

func main() {
	var a, b, s int
	fmt.Scan(&a, &b)
	for i := 0; i < 2; i++ {
		if a > b {
			s += a
			a--
		} else {
			s += b
			b--
		}
	}
	fmt.Println(s)
}

package main

import "fmt"

func main() {
	var a int
	var b int
	var k int

	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)

	for k > 0 {
		if a > 0 {
			a--
		} else if b > 0 {
			b--
		}
		k--
	}
	fmt.Println(a, b)
}
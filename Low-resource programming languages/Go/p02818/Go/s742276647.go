package main

import "fmt"

func main() {
	var a int
	var b int
	var k int
	var a_copy int

	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)

	a_copy = a
	a -= k
	if a < 0 {
		a = 0
	}
	k -= a_copy
	if k < 0 {
		k = 0
	}

	b -= k

	if b < 0 {
		b = 0
	}

	fmt.Println(a, b)
}

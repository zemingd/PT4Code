package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	if n <= a+b {
		if n <= a {
			fmt.Println(n)
		} else {
			fmt.Println(a)
		}
	} else {
		if n%(a+b) <= a {
			fmt.Println(n/(a+b)*a + n%(a+b))
		} else {
			fmt.Println(n/(a+b)*a + a)
		}
	}
}

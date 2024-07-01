package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	nn := n / (a + b)
	na := n % (a + b)
	var nb int
	if na >= a {
		nb = a
	} else {
		nb = na
	}
	fmt.Println(nn*a + nb)
}

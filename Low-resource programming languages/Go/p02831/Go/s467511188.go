package main

import "fmt"

func main() {
	n := make([]int, 2)
	for i := 0; i < 2; i++ {
		fmt.Scan(&n[i])
	}
	x := n[0] * n[1]

	if n[0] < n[1] {
		tmp := n[0]
		n[0] = n[1]
		n[1] = tmp
	}

	r := n[0] % n[1]
	for r != 0 {
		n[0] = n[1]
		n[1] = r
		r = n[0] % n[1]
	}
	fmt.Println(x / n[1])
}

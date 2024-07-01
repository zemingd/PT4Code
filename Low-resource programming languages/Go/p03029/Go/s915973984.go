package main

import "fmt"

func main() {
	var n, p int
	fmt.Scan(&n)
	fmt.Scan(&p)

	all := n*3 + p

	var re int
	for {
		if all <= 1 {
			break
		}
		all -= 2
		re++
	}
	fmt.Println(re)
}

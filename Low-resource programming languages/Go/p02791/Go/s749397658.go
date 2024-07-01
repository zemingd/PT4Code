package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	p := make([]int, n, n)
	for i := range p {
		fmt.Scan(&p[i])
	}
	for i, v := range p {
		for _, w := range p[:i] {
			if w < v {
				n--
				break
			}
		}
	}
	fmt.Println(n)
}

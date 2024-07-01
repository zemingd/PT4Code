package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}
	for i := 1; i < n-1; i++ {
		if p[i-1] < p[i] || p[i+1] < p[i] {
			if p[i-1] < p[i] && p[i+1] < p[i] {
				continue
			} else {
				r++
			}
		}
	}
	fmt.Println(r)
}
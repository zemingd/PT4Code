package main

import "fmt"

func main() {
	var n, sum int
	fmt.Scan(&n)

	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	for i := 1; i < n-1; i++ {
		p1 := p[i-1]
		p2 := p[i]
		p3 := p[i+1]
		if p1 < p2 && p2 < p3 || p1 > p2 && p2 > p3 {
			sum++
		}
	}

	fmt.Println(sum)
}

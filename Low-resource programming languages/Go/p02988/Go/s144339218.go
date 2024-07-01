package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &p[i])
	}
	count := 0
	for i := 1; i < n-1; i++ {
		a := p[i-1]
		b := p[i]
		c := p[i+1]
		if a < b && b < c || c < b && b < a {
			count++
		}
	}
	fmt.Println(count)
}

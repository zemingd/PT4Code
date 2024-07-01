package main

import "fmt"

func main() {
	var n, sum int
	fmt.Scan(&n)
	v := make([]int, n)
	c := make([]int, n)

	for i := range v {
		fmt.Scan(&v[i])
	}
	for i := range c {
		fmt.Scan(&c[i])
	}
	for i := 0; i < n; i++ {
		t := v[i] - c[i]
		if t > 0 {
			sum += t
		}
	}
	fmt.Println(sum)
}

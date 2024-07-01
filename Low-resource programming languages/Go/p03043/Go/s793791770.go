package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	d := 1.0 / float64(n)
	c := 1.0 / float64(2)
	sum := float64(0.0)
	for i := 1; i <= n; i++ {
		calc := d
		for j := i; j < k; j *= 2 {
			calc *= c
		}
		sum += calc
	}
	fmt.Println(sum)
}
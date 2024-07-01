package main

import "fmt"

func main() {
	xs := make([]int, 5)
	for i := range xs {
		fmt.Scan(&xs[i])
	}

	sum := 0
	max := 0
	for _, x := range xs {
		sum += x
		if v := x % 10; v != 0 {
			p := 10 - v
			if p > max {
				max = p
			}
			sum += p
		}
	}
	fmt.Println(sum - max)
}

package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)
	fmt.Printf("%d", calc(n))
}

func calc(n int) int {
	r := f(n)

	count := 0
	for {
		m := r % 10
		if m != 0 {
			return count
		}
		count++
		r = r / 10
	}
}

func f(n int) int {
	if n < 2 {
		return 1
	}
	return n * f(n-2)
}
package main

import "fmt"

func main() {
	var n, l int

	var isZero bool
	var all int
	var last int

	fmt.Scan(&n)
	fmt.Scan(&l)

	for i := 1; i <= n; i++ {
		taste := l + i - 1
		all = all + taste

		if taste == 0 {
			isZero = true
		}
		if i == n {
			last = taste
		}
	}

	if isZero {
		fmt.Println(all)
	} else if l < 0 {
		fmt.Println(all - last)
	} else {
		fmt.Println(all - l)
	}
}

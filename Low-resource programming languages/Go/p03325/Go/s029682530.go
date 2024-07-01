package main

import "fmt"

func main() {
	n := 0
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	count := 0
	for i := 0; i < n; i++ {
		count += divBy2(a[i])
	}
	fmt.Println(count)
}

func divBy2(x int) int {
	count := 0
	for i := 0; i < 10; i++ {
		if x%2 == 0 {
			count++
			x /= 2
		} else {
			break
		}
	}
	return count
}

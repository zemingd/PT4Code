package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ds := make([]int, n)
	for i := 0; i < k; i++ {
		fmt.Scan(&ds[i])
	}

	canNotUse := make([]bool, 10)
	for i := range ds {
		canNotUse[ds[i]] = true
	}

	check := func(n int) bool {
		for n != 0 {
			m := n % 10
			if canNotUse[m] {
				return false
			}
			n /= 10
		}
		return true
	}
	for i := n; i < 1000000; i++ {
		if check(i) {
			fmt.Println(i)
			return
		}
	}
}

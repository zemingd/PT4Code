package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	res := 0
	for i := 0; i < n; i++ {
		ok := true
		for j := 0; j <= i; j++ {
			if !(a[i] <= a[j]) {
				ok = false
				break
			}
		}
		if ok {
			res++
		}
	}

	fmt.Println(res)
}

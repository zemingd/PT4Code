// Try AtCoder
// author: Leonardone @ NEETSDKASU
package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	ans := make([]int, 0, n)
	if n%2 == 0 {
		for i := n - 1; i >= 0; i-- {
			if i%2 != 0 {
				ans = append(ans, a[i])
			}
		}
		for i := 0; i < n; i++ {
			if i%2 == 0 {
				ans = append(ans, a[i])
			}
		}
	} else {
		for i := n - 1; i >= 0; i-- {
			if i%2 == 0 {
				ans = append(ans, a[i])
			}
		}
		for i := 0; i < n; i++ {
			if i%2 != 0 {
				ans = append(ans, a[i])
			}
		}
	}
	for i, v := range ans {
		if i > 0 {
			fmt.Print(" ")
		}
		fmt.Print(v)
	}
	fmt.Println()
}

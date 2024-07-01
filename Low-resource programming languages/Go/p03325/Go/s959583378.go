package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	ans := 0
	for i := range a {
		ans += count(a[i])
	}

	fmt.Println(ans)
}

func count(n int) int {
	cnt := 0
	for n%2 == 0 {
		n /= 2
		cnt++
	}
	return cnt
}
package main

import "fmt"

func main() {
	var n, L int
	fmt.Scan(&n, &L)
	sum := 0
	for i := 0; i < n; i++ {
		sum += L + i
	}
	ans := 0
	dif := 9999999
	for i := 0; i < n; i++ {
		if abs(L+i) < dif {
			dif = abs(L + i)
			ans = L + i
		}
	}
	fmt.Println(sum - ans)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

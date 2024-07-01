package main

import (
	"fmt"
)

func perm(n int) int {
	v := 1
	if 1 < n {
		for i := 0; i < n-1; i++ {
			v = v * (n - i) % 1000000007
		}
	}
	return v
}

func perm2(n int) int{
	v := 1
	if 1 < n {
		for i := 0; i < n-1; i++ {
			v = v * (n - i)
		}
	}
	return v
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	var ans int
	for i := 1; i <= k; i++ {
		ans = (perm(k-1) / (perm2(k-i) * perm2(i-1))) * (perm(n-k+1) / (perm2(n-k-i+1) * perm2(i))) % 1000000007
		fmt.Println(ans)
	}
}
package main

import (
	"fmt"
)

func perm(n int) int {
	v := 1
	if 1 < n {
		for i := 0; i < n-1; i++ {
			v *= (n - i)
		}
	}
	return v
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	var ans int
	for i := 1; i <= k; i++ {
		ans = (perm(k-1) / (perm(k-i) * perm(i-1))) * (perm(n-k+1) / (perm(n-k-i+1) * perm(i))) % 1000000007
		fmt.Println(ans)
	}
}

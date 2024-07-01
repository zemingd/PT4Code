package main

import "fmt"

func main() {
	var mod int64 = 1000000007
	var n int64
	fmt.Scan(&n)

	a := make([]int64, n)

	for i := range a {
		fmt.Scan(&a[i])
	}

	var data int64
	var ans int64

	for i := n -2; i >= 0; i--{
		data = (data + a[i+1]) % mod
		ans = (ans + (data*a[i])%mod) % mod

	}
	fmt.Println(ans)
}

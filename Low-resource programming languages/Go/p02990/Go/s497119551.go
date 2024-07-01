package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	const M int64 = 1000000007

	fa := make([]int64, n+1, n+1)
	fi := make([]int64, n+1, n+1)

	fa[0] = 1
	fi[0] = 1

	for i := 1; i <= n; i++ {
		fa[i] = fa[i-1] * int64(i) % M
		fi[i] = modinv(fa[i], M)
	}

	for i := 1; i <= k; i++ {
		if i > n-k+1 {
			fmt.Println(0)
		} else {
			tmp := fa[n-k+1]
			tmp = tmp * fi[n-k+1-i] % M
			tmp = tmp * fi[i] % M
			tmp = tmp * fa[k-1] % M
			tmp = tmp * fi[i-1] % M
			tmp = tmp * fi[k-i] % M
			fmt.Println(tmp)
		}
	}
}

func modpow(a int64, n int64, m int64) int64 {
	if n == 0 {
		return 1
	}
	tmp := modpow(a, n/2, m)
	if n%2 == 0 {
		return tmp * tmp % m
	}
	return tmp * tmp % m * a % m
}

func modinv(a int64, m int64) int64 {
	return modpow(a, m-2, m)
}

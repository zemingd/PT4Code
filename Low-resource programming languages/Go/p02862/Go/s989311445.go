package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	if (x+y)%3 != 0 {
		fmt.Println(0)
		return
	}

	k := (x + y) / 3
	for i := 0; i <= k*2; i++ {
		j := k - i
		a := i*2 + j
		b := i + 2*j
		if a == x && b == y {
			ans := comb(k, j)
			fmt.Println(ans)
			return
		}
	}
	fmt.Println(0)
}

const mod int = 1e9 + 7

func comb(n, r int) int {
	nu := 1
	for i := 0; i < r; i++ {
		nu = mul(nu, n-i)
	}

	de := 1
	for i := 1; i <= r; i++ {
		de = mul(de, i)
	}

	return div(nu, de)
}

func pow(n, k int) int {
	if k == 0 {
		return 1
	} else if k%2 == 1 {
		return pow(n, k-1) * n % mod
	} else {
		t := pow(n, k/2)
		return t * t % mod
	}
}

func add(a, b int) int {
	return (a + b) % mod
}

func sub(a, b int) int {
	return (a + mod - b) % mod
}

func mul(a, b int) int {
	return a % mod * b % mod % mod
}

func div(a, b int) int {
	return mul(a, pow(b, mod-2))
}

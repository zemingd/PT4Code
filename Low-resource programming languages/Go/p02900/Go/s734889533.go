package main

import "fmt"

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func divisors(n int) (r map[int]int) {
	r = make(map[int]int, 0)
	for i := 2; i*i <= n; i++ {
		for n%i == 0 {
			n /= i
			r[i]++
		}
	}
	if n > 1 {
		r[n]++
	}
	return r
}

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	// fmt.Println("A", A, "B", B, "GCD", gcd(A, B), "divs(GCD)", divisors(gcd(A, B)))
	fmt.Println(len(divisors(gcd(A, B))) + 1)
}

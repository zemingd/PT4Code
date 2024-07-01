package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	pm := primeFactorize(n)
	ans := 0
	for _, v := range pm {
		for i := 1; i <= v; i++ {
			v -= i
			ans++
		}
	}

	fmt.Println(ans)
}

func primeFactorize(n int) map[int]int {
	res := make(map[int]int)
	for i := 2; i*i <= n; i++ {
		for n%i == 0 {
			n /= i
			res[i]++
		}
	}
	if n != 1 {
		res[n]++
	}
	return res
}

package main

import "fmt"

func primeFactor(n int) map[int]int {
	ret := make(map[int]int)
	for i := 2; i*i <= n; i++ {
		for n%i == 0 {
			ret[i]++
			n /= i
		}
	}
	if n != 1 {
		ret[n] = 1
	}
	return ret
}

func main() {
	var n int
	fmt.Scan(&n)

	ans := 0
	for _, v := range primeFactor(n) {
		for i := 1; v >= i; i++ {
			v -= i
			ans++
		}
	}

	fmt.Println(ans)
}

package main

import "fmt"

func function1(n int64) int64 {

	ans := int64(0)
	k := int64(10)
	for n >= k {
		ans += n / k
		k *= 5
	}
	return ans

}

func main() {

	var ans, n int64

	fmt.Scan(&n)

	ans = 0

	if n%2 == 0 {
		ans = function1(n)

	}
	println(ans)

}

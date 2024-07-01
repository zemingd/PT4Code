package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ans := float64(0)
	for i := 1; i <= n; i++ {
		bnb := n
		sum := i
		for sum < k {
			bnb *= 2
			sum *= 2
		}
		ans += float64(1) / float64(bnb)
	}
	fmt.Println(ans)
}

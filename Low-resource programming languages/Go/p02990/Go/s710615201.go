package main

import "fmt"

func permutation(n, k int) int {
	ans := 1
	for i := 0; i < k; i++ {
		ans *= (n - i)
	}
	return ans
}

func factorical(n int) int {
	return permutation(n, n-1)
}

func combination(n, k int) int {
	return permutation(n, k) / factorical(k)
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	for i := 1; i <= k; i++ {
		fmt.Println(combination(n-k+1, i) * combination(k-1, i-1))
	}
}

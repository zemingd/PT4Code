package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	br := make([]int, n)
	br[0] = ar[0]
	for i := 1; i < n; i++ {
		br[i] = gcd(br[i-1], ar[i])
	}
	cr := make([]int, n)
	cr[n-1] = ar[n-1]
	for i := n - 2; i >= 0; i-- {
		cr[i] = gcd(cr[i+1], ar[i])
	}
	max := cr[1]
	if max < br[n-2] {
		max = br[n-2]
	}
	for i := 1; i < n-1; i++ {
		result := gcd(br[i-1], cr[i+1])
		if max < result {
			max = result
		}
	}
	fmt.Println(max)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

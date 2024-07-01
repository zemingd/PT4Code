package main

import "fmt"

func main() {
	var n, k, max int
	fmt.Scan(&n, &k)
	a := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		fmt.Scan(&a[i])
		a[i] += a[i-1]
		if i > k && max < a[i]-a[i-k] {
			max = a[i] - a[i-k]
		}
	}
	fmt.Println(float64(max+k) / 2)
}
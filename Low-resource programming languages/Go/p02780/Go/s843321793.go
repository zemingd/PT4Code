package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ex := make([]float64, n)
	for i := 0; i < n; i++ {
		var p float64
		fmt.Scan(&p)
		ex[i] = (p + 1) / 2.0
	}

	sum := 0.0
	for i := 0; i < k; i++ {
		sum += ex[i]
	}
	fmt.Println(sum)

	first := 0
	last := k
	max := sum
	for last < n {
		sum = sum - ex[first] + ex[last]
		first++
		last++
		if sum > max {
			max = sum
		}
	}
	fmt.Printf("%.12f\n", max)
}

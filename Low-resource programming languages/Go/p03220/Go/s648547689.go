package main

import "fmt"

func main() {
	var n, t, a float64
	fmt.Scan(&n, &t, &a)

	h := make([]float64, int(n))
	for i := 0; i < int(n); i++ {
		fmt.Scan(&h[i])
	}
	min := 1000.0
	numStore := 0

	for i := 0; i < int(n); i++ {
		localMin := a - (t - h[i]*0.006)
		if localMin < 0 {
			localMin *= -1
		}
		if min > localMin {
			min = localMin
			numStore = i
		}
	}
	fmt.Println(numStore + 1)
}

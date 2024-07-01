package main

import "fmt"

func main() {
	var N, w int
	var t float64
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		fmt.Scan(&w)
		t += 1 / float64(w)
	}
	fmt.Println(1 / t)

}

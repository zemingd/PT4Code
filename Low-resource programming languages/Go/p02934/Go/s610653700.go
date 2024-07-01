package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]float64, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	ans := 0.0
	for i := 0; i < len(a); i++ {
		ans += (1 / a[i])
	}
	fmt.Println(1 / ans)
}

package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	b := make([]int, n)
	if n%2 == 0 {
		for i := 0; i < n/2; i++ {
			b[i] = a[n-1-i*2]
		}
		for i := 0; i < n/2; i++ {
			b[i+n/2] = a[2*i]
		}
	}
	if n%2 == 1 {
		for i := 0; i <= n/2; i++ {
			b[i] = a[n-1-2*i]
		}
		for i := 0; i < n/2; i++ {
			b[i+1+n/2] = a[1+2*i]
		}

	}
	for i := 0; i < n; i++ {
		fmt.Printf("%d", b[i])
		if i != n-1 {
			fmt.Printf(" ")
		} else {
			fmt.Printf("\n")
		}
	}
}

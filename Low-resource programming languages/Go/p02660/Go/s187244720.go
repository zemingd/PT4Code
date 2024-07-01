package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	xm := make(map[int]bool)
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			n /= i
			xm[i] = true
		}
	}
	xm[n] = true
	delete(xm, 1)
	fmt.Println(len(xm))
}

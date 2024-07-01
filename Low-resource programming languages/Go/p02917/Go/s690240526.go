package main

import "fmt"

func main() {
	var N, i, sum int
  	fmt.Scan(&N)
  	b := make([]int, N-1)
  	for i = range b {
		fmt.Scan(&b[i])
	}

	a:= make([]int, N)
	a[0] = b[0]
	a[N-1] = b[N-2]
	for i = 0; i < N-2; i++ {
		if b[i] < b[i+1] {
			a[i+1] = b[i]
		} else {
			a[i+1] = b[i+1]
		}
	}

	for k := 0; k < N; k++ {
		sum += a[k]
	}
	fmt.Println(sum)
}

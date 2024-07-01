package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	cnt := 0
	for i := 0; i < N; i++ {
		for {
			if a[i]%2 == 0 {
				a[i] /= 2
				cnt++
			} else {
				break
			}
		}
	}
	fmt.Println(cnt)
}

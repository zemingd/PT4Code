package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)

	for i:=0; i<n; i++ {
		fmt.Scan(&h[i])
	}

	cnt := 0
	i:=0
	for i<n {
		if h[i] == 0 {
			i++
		} else {
			h[i]--
			for j:=i+1; j<n; j++ {
				if h[j] <= 0 {
					break
				}
				h[j]--
			}
			cnt++
		}
	}

	fmt.Println(cnt)
}
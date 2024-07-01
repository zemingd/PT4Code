package main

import (
	"fmt"
)

func main() {
	var n, tmp int
	fmt.Scan(&n)
	v := make([]int, n)

	for i:=0; i< n; i++ {
		fmt.Scan(&tmp)
		v[i] = tmp
	}
	cnt := 0
	for i:=1; i< n-1; i++ {
		if v[i] > v[i-1] && v[i] < v[i+1] {
			cnt += 1
		} else if v[i-1] > v[i] && v[i] > v[i+1] {
			cnt += 1
		}
	}
	fmt.Println(cnt)
}

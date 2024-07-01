package main

import (
	"fmt"
	//"sort"
)

func main(){
	var N, K int
	var a[1000000] int
	var b[1000000] int
	fmt.Scan(&N, &K)
	c := make([]int64, 100000+1)

	for i := 0 ; i < N ; i++ {
		fmt.Scan(&a[i], &b[i])
	}

	for i := 0 ; i < N ; i++{
		c[a[i]] += int64(b[i])
	}

	for i := 1 ; i <= 100000 ; i++ {
		if int64(K) <= c[i] {
			fmt.Println(i)
			break
		}
		K -= int(c[i])
	}
}
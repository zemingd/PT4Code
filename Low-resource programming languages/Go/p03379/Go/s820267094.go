package main

import (
	"fmt"
	"sort"
)

func main(){
	var N int
	fmt.Scan(&N)
	var X int
	XN := make([]int, N)
	for i:=0; i < N; i++ {
		fmt.Scan(&X)
		XN[i] = X
	}

	so := make([]int, N)
	for r := range XN {
		so[r] = XN[r]
	}
	sort.Ints(so)

	for i := 0; i < N; i++ {
		var tmp int
		for r := range so {
			if XN[i] == so[r] {
				tmp = r
				break
			}
		}
		if tmp < N/2 {
			fmt.Println(so[(N/2)])
		}else{
			fmt.Println(so[(N/2)-1])
		}
	}
}
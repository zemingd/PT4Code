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

	for i := 0; i < N; i++ {
		tmp := make([]int, N-1)
		for x := 0;x<i;x++{
			tmp[x]=XN[x]
		}
		for x:= i+1;x<N;x++{
			tmp[x-1]=XN[x]
		}

		sort.Ints(tmp)
		fmt.Println(tmp[(N/2)-1])
	}
}
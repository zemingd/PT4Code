package main

import (
	"fmt"
	"sort"
)

type ll int64


func main() {

	var N,K int
	fmt.Scan(&N,&K)

	slice := make([]int,N)

	for i:= 0;i < N  ;i++  {
		fmt.Scan(&slice[i])
	}

	//sort
	sort.Sort(sort.IntSlice(slice))

	//out

	var ans_min int = 10e9
	var buf int = 0

	for i:=0;i<N-K+1 ;i++  {
		buf = slice[K+i-1] - slice[i]
		if buf < ans_min {
			ans_min = buf
		}
	}

	fmt.Println(ans_min)
}
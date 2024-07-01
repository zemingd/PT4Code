package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N,&M)
	H := make([]int, N)
  isGood := make([]int, N)

	for i:= range H {
		fmt.Scan(&H[i])
		isGood[i] = 1
	}

	for i:=0; i<M; i++ {
		var a, b int
		fmt.Scan(&a,&b)
		if H[a-1] >= H[b-1] {
			isGood[b-1] = 0
		} else if H[a-1] <= H[b-1]{
			isGood[a-1] = 0
		}
	}

	var count int
	for i:=range isGood {
		if isGood[i]==1 {
			count++
		}
	}
	fmt.Println(count)
}
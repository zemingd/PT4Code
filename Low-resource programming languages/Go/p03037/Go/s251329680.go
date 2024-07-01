package main

import "fmt"

func main(){
	var N, M, ans int 
	var L[1000000]int 
	var R[1000000]int 
	var card [1000000] int
	fmt.Scan(&N, &M)

	for i := 0 ; i < M ; i++ {
		fmt.Scan(&L[i], &R[i])
	}

	for i := 0 ; i < M ; i++ {
		for j := L[i] ; j <= R[i] ; j++ {
			card[j]++
		}
	}
	ans = 0
	for i := 1 ; i <= N ; i++ {
		if card[i] == M {
			ans++
		}
	}
	fmt.Println(ans)

}
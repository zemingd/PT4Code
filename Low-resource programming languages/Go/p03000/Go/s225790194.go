package main

import (
	"fmt"
)

func main(){
	var N, X int
	fmt.Scanf("%d %d", &N, &X)

	L := make([]int, N+1)
	var D []int
	
	for i:=0; i < N; i++ {
		fmt.Scan(&L[i])
	}
	D = append(D, 0)
	qtd := 0
	tst := true
	for i:=0; i < N; i++ {
		if L[i] != 0 {
			tst = false
			break
		}
	}
	if tst {
		fmt.Println(0)
		return
	}
	for i:=0; D[i] <= X; i++ {
		D = append(D, D[i]+L[i])
		qtd++
		//fmt.Println(D[i], qtd)
	}
	fmt.Println(qtd)
}
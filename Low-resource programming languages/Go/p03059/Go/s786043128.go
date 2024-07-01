package main

import (
	"fmt"
)

func main(){
	var A, B, K int
	qtd := 0
	fmt.Scanf("%d %d %d", &A, &B, &K)
	if A > K {
		fmt.Println(0)
		return
	}
	for i:=1; i<=K; i++ {
		if i%A == 0 {
			qtd += B
		}
	}
	fmt.Println(qtd)
}
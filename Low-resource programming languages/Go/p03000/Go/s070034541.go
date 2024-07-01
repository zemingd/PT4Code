package main

import (
	"fmt"
)

func main() {


	var N,X int

	fmt.Scan(&N,&X)

	L:=make([]int,N)

	for i:=0;i<N;i++{

		fmt.Scan(&L[i])

	}

	last :=0
	count :=1

	for i :=0; i<N; i++{

		last = last + L[i]

		if last <= X{

			count++
		}

	}

	fmt.Println(count)

}
package main

import (
	"fmt"
)

func main(){
	var A,B,N int
	max := 0

	fmt.Scanf("%d %d %d",&A,&B,&N)

	for x := 0;x<=N;x++{
		t := (A*x/B) - A*(x/B)
		if t > max{
			max = t
		}
	}

	fmt.Println(max)

}

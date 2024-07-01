package main

import (
	"fmt"
)

func main() {
	var A,V,B,W,T int
	fmt.Scan(&A,&V,&B,&W,&T)
	oituku := V - W
	sum := B - A
	for i:=0; i<T; i++ {
		sum -= oituku
	}
	if sum<=0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
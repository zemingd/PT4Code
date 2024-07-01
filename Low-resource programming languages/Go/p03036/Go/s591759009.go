package main

import (
	"fmt"
)

func main() {
	var r,d,x2000 int
	fmt.Scan(&r,&d,&x2000)
	
	x := make([]int, 11)
	x[0] = r*x2000 - d
	for i:=1; i<10; i++ {
		x[i] = r*x[i-1] - d
		fmt.Println(x[i])
	}
}
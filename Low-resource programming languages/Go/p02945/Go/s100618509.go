package main

import (
	"fmt"
	"os"
)

func main(){
	var a, b int
	fmt.Fscanf(os.Stdin, "%d %d", &a, &b)
	x := a + b
	y := a * b
	z := a - b
	var max int
	if x > y {
		max = x
	}else{
		max = y
	}
	if max < z {
		max = z
	}
	fmt.Println(max)
}

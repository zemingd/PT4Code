package main

import (
	"fmt"
	"math"
)

func main(){
	len := 2* math.Pi * float64(readInt())
	fmt.Println(len)
}

func readInt() (N int){
	fmt.Scan(&N)
	return
}

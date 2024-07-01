package main

import (
	"fmt"
	"math"
)

func main(){
	var a,b,c int
	fmt.Scan(&a,&b,&c)
	if float64(a)+float64(b)+2*math.Sqrt(float64(a*b)) < float64(c){
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

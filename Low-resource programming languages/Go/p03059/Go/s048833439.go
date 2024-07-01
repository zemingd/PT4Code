package main

import (
	"fmt"
	"math"
)

func main(){
	var a, b, t float64;
	fmt.Scan(&a, &b, &t);
	temp := math.Trunc((t + 0.5)/a);
	fmt.Println(b*temp);
}

package main

import (
	"fmt"
	"math"
)

func main() {
	var a, v, b, w, t int
	fmt.Scan(&a, &v)
	fmt.Scan(&b, &w)
	fmt.Scan(&t)

	if v > w &&  math.Abs(float64((b - a) / (v - w))) <= float64(t){
		fmt.Println("YES")
	}else{
		fmt.Println("NO")
	}


}
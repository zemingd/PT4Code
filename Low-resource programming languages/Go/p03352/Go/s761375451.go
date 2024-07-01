package main

import (
	"fmt"
	"math"
)

func main(){
	var X int
	fmt.Scan(&X)
	var res float64
	res = 1.0
	for i := 2; i < X; i++ {
		//for文
		n := 2.0
		for int(math.Pow(float64(i),n)) <= X {
			tmp := math.Pow(float64(i),n)
			n++
			if tmp > res && tmp <= float64(X) {
				res = tmp
			}
		}
	}
	fmt.Println(res)
}
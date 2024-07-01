package main

import (
	"fmt"
	"math"
)

func main(){
	var N int
	fmt.Scan(&N)
	w := make([] int, N)
	sum := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&w[i])
		sum += w[i]
	}
	//fmt.Println(sum)
	tmpSum := sum
	sum_w := 0
	for i := 0; i < N; i++ {
		sum_w += w[i]
		tmpSum = int(math.Min(float64(tmpSum),
			math.Abs(float64(sum_w) - (float64(sum) - float64(sum_w)))))
	}
	fmt.Println(tmpSum)

}
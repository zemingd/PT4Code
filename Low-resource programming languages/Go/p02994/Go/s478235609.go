package main

import (
	"fmt"
)

type ll int64


func main() {

	var N int
	var L int
	fmt.Scan(&N,&L)


	abs_min := 100000//絶対値の最小

	value := 0
	sum := 0
	dis := 0

	for i:=0;i<N ; i++ {
		value = L + i
		sum += value

		if abs_min >= abs(value) { //絶対値の最小が一番小さくなるようにする
			abs_min = abs(value)
			dis = value
		}

	}


	fmt.Println(sum - dis)


}


func abs(value int) int {
	if value < 0 {
		value = -value
	}
	return value
}


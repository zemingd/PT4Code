package main

import (
	"fmt"
	"math"
)

func main() {
	var dishes [5]int
	var moddishes [5]int
	var min int
	min = 10000
	var minnumber int
	for i := 0; i < 5; i++ {
		fmt.Scan(&dishes[i])
		if dishes[i]%10 != 0 {
			moddishes[i] = dishes[i] % 10
		} else {
			moddishes[i] = 10
		}
		if min > moddishes[i] {
			minnumber = i
		}
		if moddishes[i] != 0 {
			min = int(math.Min(float64(min), float64(moddishes[i])))
		}
	}
	fmt.Println(moddishes)
	fmt.Println(minnumber)
	var ret int
	for i := 0; i < 5; i++ {
		if i != minnumber {
			ret += dishes[i] + (10 - moddishes[i])
			fmt.Println(ret)
		}
	}
	ret += dishes[minnumber]
	fmt.Println(ret)
}

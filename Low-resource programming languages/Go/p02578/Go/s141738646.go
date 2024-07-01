package main

import (
	"fmt"
)

func main() {
	//reader := []byte("1000 1 1000")
	var n int
	fmt.Scanf("%d", &n)

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &arr[i])
	}

	total := 0
	min := arr[0]
	for _, v := range arr {
		//fmt.Println(i, v)
		if v >= min {
			min = v
			continue
		} else {
			//fmt.Printf("[%d]=%d (%d)\t%d\n", i, v, (min - v), min)
			total += (min - v)
		}

	}

	fmt.Println(total)

}
package main

import (
	"fmt"
)

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c)
	fmt.Scan(&k)
	arr := make([]int, 3)
	arr[0] = a
	arr[1] = b
	arr[2] = c

	fmt.Println(judge(arr, k))
}

func judge(arr []int, k int) string{
	for i:=0; i<k; i++ {
		m := min(arr)

		if m == 0{
			arr[2] = arr[2] *2
		} else {
			arr[m] = arr[m] *2
		}
		
		if arr[0] < arr[1] && arr[1] < arr[2]{
			return "Yes"
		}
	}
	return "No"
}

func min(arr []int) int {
	min := arr[0]
	var i int
	for s, v := range arr {
		if (v < min) {
			min = v
			i = s
		}
	}
	return i
}
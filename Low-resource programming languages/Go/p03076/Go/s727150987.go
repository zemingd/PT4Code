package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c, d, e int
	fmt.Scan(&a, &b, &c, &d, &e)

	arr := selection([]int{a, b, c, d, e})

	sum := 0
	for i := 0; i < len(arr)-1; i++ {
		sum += arr[i]
	}
	fmt.Println(a + b + c + d + e + sum)
}

func selection(args []int) []int {
	arr := []int{}
	for _, num := range args {
		if num%10 != 0 {
			arr = append(arr, 10-num%10)
		}
	}
	sort.Sort(sort.IntSlice(arr))
	return arr
}

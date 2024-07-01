package main

import "fmt"

func inputSlice(inputNums int) []int {
	var ary []int
	for i := 0; i < inputNums; i++ {
		var in int
		fmt.Scan(&in)
		ary = append(ary, in)
	}
	return ary
}

func check(ary []int) string {
	for i := 1; i < len(ary); i++ {
		if ary[i-1]-1 >= ary[i] {
			return "No"
		}
	}
	return "Yes"
}

func main() {
	var n int
	fmt.Scan(&n)
	ary := inputSlice(n)
	fmt.Println(check(ary))
}

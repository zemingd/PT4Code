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
	for i := len(ary) - 1; i > 0; i-- {
		if ary[i]-1 == ary[i-1] {
			ary[i]--
		}
	}
	for i := 0; i < len(ary)-1; i++ {
		if ary[i] > ary[i+1] {
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

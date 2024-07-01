package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i:=0; i<len(a); i++{
		fmt.Scan(&a[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	sum := a[0]

	for i:=0; i<len(a)-2; i++{
		min := minTwonums(a[i], a[i+1])
		sum += min
	}

	fmt.Println(sum)
}

func minTwonums(num1 int, num2 int)int{
	if num1 >= num2{
		return num2
	}else{
		return num1
	}
}
package main

import (
	"fmt"
	"sort"
)

func main() {
	var k, n int
	fmt.Scan(&k, &n)
	a := make([]int, n)
	for i, _ := range a {
		fmt.Scan(&a[i])
	}

	sort.Ints(a)

	var length []int
	for i, v := range a {
		if i == len(a)-1 {
			length = append(length, k-v+a[0])
		} else {
			length = append(length, a[i+1]-v)
		}
	}

	sort.Ints(length)

	ans := 0
	for i, v := range length {
		if i == len(length)-1 {
			fmt.Println(ans)
		} else {
			ans += v
		}
	}

}
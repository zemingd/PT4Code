package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	step := 0
	pre := 0
	for i := 0; i < n; i++ {
		if i == 0 {

			pre = a[i]
		} else {
			if pre <= a[i]{
				pre = a[i]
			} else {
				add :=  pre - a[i]
				pre = a[i] + add
				step = step + add
			}
		}
	}
	fmt.Println(step)
}

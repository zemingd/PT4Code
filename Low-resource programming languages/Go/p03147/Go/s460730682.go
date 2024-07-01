package main

import (
	"fmt"
	"reflect"
)

func main() {
	var n int
	fmt.Scan(&n)
	list := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}
	list0 := make([]int, n)

	res := 0
	loop := true
	for loop == true {
		if reflect.DeepEqual(list, list0) {
			fmt.Println(res)
			return
		}
		i := 0
		for i < n {
			if list[i] == 0 {
				i++
			} else {
				res++
				for i < n {
					if list[i] == 0 {
						break
					} else {
						list[i]--
						i++
					}
				}
			}
		}
	}
}

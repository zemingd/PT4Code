package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	l := make([]bool, n)

	var d int
	var a int
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			fmt.Scan(&a)
			if l[a-1] == false {
				l[a-1] = true
			}
		}
	}
	count := 0
	for _, v := range l {
		if !v {
			count++
		}
	}
	fmt.Println(count)
}

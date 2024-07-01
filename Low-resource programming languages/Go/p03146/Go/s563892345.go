package main

import (
	"fmt"
)

func main() {
	var s, r int
	fmt.Scan(&s)
	var arr []int
	arr = append(arr, s)
	i := 1
	for {
		w := arr[i-1]
		if w%2 == 0 {
			arr = append(arr, w/2)
		} else {
			arr = append(arr, 3*w+1)
		}
		var b bool
		for j := i - 1; j >= 0; j-- {
			if arr[i] == arr[j] {
				r = i + 1
				b = true
				break
			}
		}
		if b {
			break
		}
		i++
	}
	fmt.Println(r)
}
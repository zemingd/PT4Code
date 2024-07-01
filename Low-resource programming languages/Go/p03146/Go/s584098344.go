package main

import (
	"fmt"
)

func main() {
	var s, r int
	fmt.Scan(&s)
	arr := make([]int, 10000000)
	arr[0] = s
	i := 1
	for {
		w := arr[i-1]
		if w%2 == 0 {
			arr[i] = w / 2
		} else {
			arr[i] = 3*w + 1
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
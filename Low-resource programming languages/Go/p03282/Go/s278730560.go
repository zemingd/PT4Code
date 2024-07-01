package main

import (
	"fmt"
)

func main() {
	var S, w string
	var K, cnt int
	fmt.Scan(&S, &K)
	for _, v := range S {
		if v == '1' {
			cnt++
		} else {
			w = string(v)
			break
		}
	}
	if K < cnt {
		fmt.Println(1)
	} else {
		fmt.Println(w)
	}
}
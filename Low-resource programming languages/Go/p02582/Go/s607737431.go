package main

import (
	"fmt"
)

func main() {
	var rs string
	var tmp string
	var cnt int

	fmt.Scanf("%s", &rs)
	for i := 0; i < 3; i++ {
		tmp = rs[i : i+1]
		if tmp == "R" {
			cnt++
		} else {
			if i == 1 && tmp == "S" {
				cnt = 0
			}
		}
	}
	fmt.Println(cnt)
}

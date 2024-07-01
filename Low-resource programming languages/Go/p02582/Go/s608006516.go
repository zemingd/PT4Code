package main

import (
	"fmt"
)

func main() {
	var rs string
	var tmp string
	var cnt int

	fmt.Scanf("%s", &rs)
	for i := 1; i <= 3; i++ {
		tmp = rs[i-1 : i]
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

package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	num, _ := strconv.Atoi(s)

	var ret, i int
	for i = 1; i <= num; i++ {
		if i%3 == 0 {
			continue
		}
		if i%5 == 0 {
			continue
		}
		ret = ret + i
	}

	fmt.Println(ret)
}

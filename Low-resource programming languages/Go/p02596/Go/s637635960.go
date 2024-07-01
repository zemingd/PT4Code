package main

import (
	"fmt"
	"strconv"
)

func main() {
	var k, num int
	fmt.Scan(&k)

	flag := true
	s := "7"
	if k >= 7 {
		num = 1
	} else {
		num = -1
	}

	for flag && k >= 7 {
		i, _ := strconv.Atoi(s)
		if i%k == 0 {
			flag = false
		} else {
			num += 1
			s += "7"
		}
	}
	fmt.Println(num)
}

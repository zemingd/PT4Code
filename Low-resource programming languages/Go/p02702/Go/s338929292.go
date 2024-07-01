package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	var num int
	fmt.Scan(&s)
	for i:=0; i<len(s); i++ {
		for j:=i+3; j<len(s); j++ {
			intS, _ := strconv.Atoi(s[i:j+1])
			if intS % 2019 == 0 {
				num += 1
			}
		}
	}

	fmt.Println(num)
}

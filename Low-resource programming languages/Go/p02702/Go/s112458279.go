package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	var cnt int
	fmt.Scan(&s)
	for i := 0; i < len(s)-3; i++ {
		for j := i + 3; j < len(s); j++ {
			sub := string(s[i : j+1])
			num, _ := strconv.Atoi(sub)
			if num%2019 == 0 {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}

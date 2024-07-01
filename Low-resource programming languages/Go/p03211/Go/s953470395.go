package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	min := 1000
	for i := 0; i < len(s)-2; i++ {
		now := string(s[i]) + string(s[i+1]) + string(s[i+2])
		nowNum, _ := strconv.Atoi(now)
		absNow := nowNum - 753
		if absNow < 0 {
			absNow *= -1
		}
		if min > absNow {
			min = absNow
		}
	}
	fmt.Println(min)

}

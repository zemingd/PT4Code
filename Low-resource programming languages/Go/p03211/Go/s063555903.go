package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	min := 753
	for i := 0; i < len(s)-2; i++ {
		num,_ := strconv.Atoi(s[i:i+3])
    	if min > abs(753,num) {
			min = abs(753,num)
		}
	}
	fmt.Println(min)
}


func abs(a,b int)int {
	if a > b {
		return a - b
	} else {
		return b - a
	}
}
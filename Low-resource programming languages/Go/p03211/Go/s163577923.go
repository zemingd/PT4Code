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
      if min > abs(753,digits(s[i:i+3])) {
			min = abs(753,digits(s[i:i+3]))
		}
	}
	fmt.Println(min)
}

func digits(num string)int {
	sum := 0
	multi := 100
	for i := 0; i < len(num); i++ {
    	tmp,_ := strconv.Atoi(string(num[i]))
     	sum += tmp * multi
		multi /= 10
	}
	return sum
}

func abs(a,b int)int {
	if a > b {
		return a - b
	} else {
		return b - a
	}
}
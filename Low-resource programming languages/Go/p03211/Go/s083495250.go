package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	if len(s) < 4 && len(s) > 10{
		return
	}
	first_num := s[0 : 3]
	min, _ := strconv.Atoi(first_num)
	for i:=1; i<len(s)-2; i++{
		slice_num := s[i : i+3]
		num, _ := strconv.Atoi(slice_num)
		if math.Abs(float64(min-753)) < float64(min){
			min = num
		}
	}
	fmt.Println(math.Abs(float64(min - 753)))
}
package main 

import (
	"fmt"
	"math"
	// "strings"
)

var n int
var num int

func main() {
	fmt.Scan(&n)

	var nums [] int
	for i:=0; i<n; i++ {
		fmt.Scan(&num)
		nums =  append(nums, num)
	}
	length := len(nums)
	var ruisekiwa [] int 

	for index, value :=  range nums {
		if index == 0 {
			ruisekiwa = append(ruisekiwa, value)
		}else{
			ruisekiwa = append(ruisekiwa, ruisekiwa[index-1]+value)
		}
	}

	ans := 0

	for index, value := range nums {
		if index != length-1 {
			ans += value * (ruisekiwa[length-1]-ruisekiwa[index])			
		}
	}

	ansdivisioner := math.Pow(10, 9) + 7
	fmt.Println(ans%int(ansdivisioner))
}
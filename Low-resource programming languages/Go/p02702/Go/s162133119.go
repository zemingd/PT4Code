package main

import (
	"fmt"
 	"strconv"
	"math"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	snum := make([]int, len(s))
	
	for i := 0; i < len(s); i++ {
      snum[i],_ = strconv.Atoi(string(s[i]))
	}
	
	cnt := 0;
	for i := 0; i < len(s)-1; i++ {
		j := i + 3;
		for j < i+5 && j < len(s) {
          //fmt.Printf("snum[%d:%d+1]=%d\n",i,j,snum[i:j+1])
          if digits(snum[i:j+1]) % 2019 == 0 {
          	cnt++
          }
          j++
		}
	}
	fmt.Println(cnt)
}

func digits(num []int) int {
	ans := 0
	for i := 0; i < len(num); i++ {
      ans += int(math.Pow(10,float64(len(num)-1-i))) * num[i]
	}
	return ans
}
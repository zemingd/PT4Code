package main

import (
	"fmt"
)

func moreToTen(n int) int {
  return (10 - n % 10) % 10
}

func main() {
	var a,b,c,d,e int
	fmt.Scan(&a,&b,&c,&d,&e)
	
	nums := []int{a,b,c,d,e}
	moreToTens := []int{moreToTen(a),moreToTen(b),moreToTen(c),moreToTen(d),moreToTen(e)}
	
	maxIdx := 0
	max := 0
	for i := 0; i < len(moreToTens); i++ {
		if max < moreToTens[i] {
			maxIdx = i
			max = moreToTens[i]
		}
	}

 	
 	sum := 0
 	for i := 0; i < len(nums); i++ {
 		if i != maxIdx {
 			sum += nums[i] +  moreToTens[i]
 		} else {
 			sum += nums[i]
 		}
     
 	}
 	fmt.Println(sum)
}
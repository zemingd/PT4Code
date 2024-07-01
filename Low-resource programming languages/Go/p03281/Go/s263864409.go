package main

import (
  "fmt"
)

func main() {

  var n int

  fmt.Scan(&n)

  fmt.Println(len(makeDivisors(n)))

}

func makeDivisors(lim int) (nums []int) {
  for a := 1; a*a <= lim; a++ {
		if lim%a != 0 {
			continue
		}

		b := lim / a
    	nums = append(nums, a)
    	nums = append(nums, b)
		//fmt.Println(a)
		//fmt.Println(b)
	}
  return nums
}
package main

import "fmt"

func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return nums
}

func main(){ 
  bisckets := 0
  time := 0
  nums := scanNums(3)

  for i:=1;; i++ {
    time += nums[0]
    if float64(time) >= float64(nums[2]) + 0.5 {
      break
    }
    bisckets += nums[1]
  }
  
  fmt.Println(bisckets)
}
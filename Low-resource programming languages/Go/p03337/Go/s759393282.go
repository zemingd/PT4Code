package main

import "fmt"

func getMax(nums ...int) (max int){
  max = nums[0]
  for i:=0; i<len(nums); i++{
    if nums[i] > max {
      max = nums[i]
    }
  }
  return
}

func main(){
  var a, b int
  fmt.Scan(&a, &b)
  fmt.Println(getMax(a + b, a * b, a - b))
}

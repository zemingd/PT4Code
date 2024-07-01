package main

import (
  "fmt"
  //"strconv"
)

func main() {
  var (
    nums string
    white string
  )

  fmt.Scan(&nums)
  //n := len(nums)
  for i:=range(nums) {
    if i%2==0{
      white += "0"
    } else {
      white += "1"
    }
  }

  dif_w:=0
  dif_b:=0
  for i:=range(nums) {
    if nums[i:i+1] != white[i:i+1] {
      dif_w += 1
    } else {
      dif_b += 1
    }
  }

  if dif_w > dif_b {
    fmt.Println(dif_b)
  } else {
    fmt.Println(dif_w)
  }

}

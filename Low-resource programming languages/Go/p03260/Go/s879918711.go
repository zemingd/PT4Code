package main

import "fmt"

func main(){
  var a, b int
  result := "No"
  fmt.Scan(&a, &b)
  c_ary := []int{1, 2, 3}
  for i :=0; i < len(c_ary); i++ {
    if ans = a * b * c_ary[i]; ans % 2 != 0 {
      result = "Yes"
    }
  }
  fmt.Println(result)
  
}
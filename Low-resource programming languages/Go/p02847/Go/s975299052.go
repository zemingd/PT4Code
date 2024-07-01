package main

import "fmt"

func main(){
  A := [7]string{"SUN","MON","TUE","WED","THU","FRI","SAT"}
  
  var S string
  fmt.Scan(&S)
  
  var D int
  
  for i := 0;i<7;i++{
    if A[i] == S{
      D = i
     	break 
    }
  }
  fmt.Print(7-D)
}
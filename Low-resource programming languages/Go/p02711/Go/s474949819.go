package main

import "fmt"

func main() {
  var N int
  fmt.Scan(&N)
  
  n1 := N%10
  n10 := ((N-n1)%100)/10
  n100 := ((N-n1-n10*10)%1000)/100
  
  if n1 == 7|| n10 == 7 || n100 ==7 {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
  
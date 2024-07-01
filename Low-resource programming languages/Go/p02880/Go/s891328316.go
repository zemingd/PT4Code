package main

import "fmt"

func main() {
  var N int
  fmt.Scan(&N)
  for i := 1; i < 10; i++{
    if N%i == 0{
      n := N/i
      for j := 1;j < 10; j++{
        if n%j == 0 && n/j == 1{
          fmt.Println("Yes")
        }
      }
    } 
  }
  fmt.Println("No")
}

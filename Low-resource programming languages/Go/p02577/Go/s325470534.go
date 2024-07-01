package main

import "fmt"

func main() {
 remainder := 0  
 sumResult := 0  
 for number != 0 {  
  remainder = number % 10  
  sumResult += remainder  
  number = number / 10  
 }  
  if sumResult%9 == 0 {
    fmt.Println("true")
  } else {
    fmt.Println("false")
  }
}
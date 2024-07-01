package main

import "fmt"

func main() {
	var value int
  fmt.Scanf("%d", &value)
  
  if value % 1000 == 0 {
    fmt.Print(0)
  } else {
    var tmp = int(value / 1000) + 1
    
    fmt.Printf("%d", 1000 * tmp - value)
  }
}

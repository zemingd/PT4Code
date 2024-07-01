package main
 
import (
  "fmt"
)
 
func main() {
 
  var a,b,c int
  fmt.Scan(&a,&b,&c) 
  
  if b + c <= a {
    c = 0
  } else {
    c = c - (a - b)
  }
  
  fmt.Println(c)
}
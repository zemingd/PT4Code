package main
 
import (
  "fmt"
)
 
func main(){
  var a,b int
  fmt.Scanf("%d", &a)
  fmt.Scanf("%d", &b)
  c = a%b
  if c==0 {
    fmt.Printf("%d", a/b)
  } else {
    fmt.Printf("%d", a/b+1)
  }
}
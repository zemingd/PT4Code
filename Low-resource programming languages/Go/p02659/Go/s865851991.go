package main
import (
  "fmt"
)
var(
  a int
  b float64
  c int
)
func main(){
  fmt.Scan(&a,&b)
  c=int((a*int(b*100))/100)
  fmt.Println(c)
}
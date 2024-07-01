package main
import (
  "fmt"
)
var(
  a float64
  b float64
  c float64
)
func main(){
  fmt.Scan(&a,&b)
  b*=100
  c=a*b/100
  fmt.Println(int(c))
}
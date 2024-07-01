package main
import "fmt"

func main(){
  var r int
  var D int
  var weight int
  var weight_next int

  fmt.Scan(&r)
  fmt.Scan(&D)
  fmt.Scan(&weight)

  for i:= 0; i < 10; i++ {
    weight_next = r * weight - D
    weight = weight_next
    fmt.Printf("%d\n", weight)
  }
}
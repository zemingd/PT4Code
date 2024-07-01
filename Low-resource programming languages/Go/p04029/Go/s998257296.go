package main
import (
	"fmt"
)

func main() {
  var a int
  var re int
  fmt.Scan(&a)
  for i:= 1; i <= a; i++ {
    re += i
  }
  fmt.Println(re)
}
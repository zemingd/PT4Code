package main
import "fmt"

func main() {
  var r string
  fmt.Scan(&r)
  
  fmt.Println("%d", 3*int(r)*int(r))
}
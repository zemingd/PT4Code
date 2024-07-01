package main
 
import (
	"fmt"
)

func main() {

  var result int = 0
  var n int
  fmt.Scan(&n)
  for i:= 0; i< n; i++ {
  	var tmp int
    fmt.Scan(&tmp)
    result += tmp-1
  }
  fmt.Print(result)
  
}
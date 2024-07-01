package main
 
import (
	"fmt"
)

func main() {
  var d, hw, tmp int
  fmt.Scan(&d, &hw)
  for i := 0; i < hw; i++ {
    fmt.Scan(&tmp)
    d -= tmp
    if d < 0 { 
      fmt.Println(-1)
      return
    }
  }
  fmt.Println(d)
}

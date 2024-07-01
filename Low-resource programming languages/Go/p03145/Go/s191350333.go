package main
 
import (
	"fmt"
)
 
func main() {
  var ab, bc, ca int
  fmt.Scanf("%d %d %d", &ab, &bc, &ca)

  ans := (ab * bc) / 2
  fmt.Printf("%d\n", ans)
}
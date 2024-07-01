package main
 
import (
	"fmt"
)

func main() {
  var s, w int
  fmt.Scan(&s, &w)
  var ret = map[bool]string{true: "safe", false: "unsafe"} [s > w]
  fmt.Println(ret)
}

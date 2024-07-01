package main
 
import (
	"fmt"
	"strings"
)

func main() {
  var n string
  fmt.Scan(&n)
  var contain bool = strings.Contains(n, "7")
  fmt.Println(map[bool]string{true: "Yes", false: "No"}[contain])
}

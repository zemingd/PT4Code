package main
import . "fmt"
import "strings"
func main() {
  var s string
  Scan(&s)
  Println(strings.LastIndex(s,"Z")-strings.Index(s,"A")+1)
}
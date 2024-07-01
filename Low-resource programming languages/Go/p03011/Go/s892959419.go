package main
 
import (
	"fmt"
	"sort"
)
 
func main() {
  var p, q, r int
  fmt.Scan(&p, &q, &r)
 
  times := []int { p + q, q + r, r + p}
  sort.Ints(times)
  fmt.Println(times[0])
}
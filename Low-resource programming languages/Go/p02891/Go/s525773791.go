package main
 
import (
	"fmt"
)

var keep string
var keep2 string
 
func main() {
	var a string
	var b int
	var o = 0
	var st string
	fmt.Scan(&a)
	fmt.Scan(&b)
	for i := 0; i < b; i++ {
		st += a;
	}
	for i, v := range st {
		if i == 0 {
			keep = string(v)
			continue
		}
		if keep == string(v) {
			o++
		}
		keep = string(v)
	}
	fmt.Print(o)
}
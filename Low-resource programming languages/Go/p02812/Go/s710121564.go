package main
 
import (
	"fmt"
	"regexp"
)
 
func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
 
	r := regexp.MustCompile(`ABC`)
	fmt.Println(len(r.FindAllStringSubmatch(s, -1)))
}
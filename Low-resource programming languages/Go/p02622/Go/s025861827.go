package main
 
import (
	"fmt"
)
 
func main() {
	var s, t string
	fmt.Scan(&s, &t)
	len := len(s)
	res := 0
	for i := 0; i < len; i++ {
		if s[i] != t[i] {
			res++
		}
	}
	fmt.Println(res)
}
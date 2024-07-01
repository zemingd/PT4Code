package main
 
import (
	"fmt"
	//"math"
)
 
var S string
var ANS int
func main() {
	fmt.Scan(&S)
	fmt.Scan(&S)
	s := string(0) 
	for i := 0; i < len(S); i++ {
		v := S[i:i+1]
		if s != v {
			ANS++
			s = v
		}
	}
	fmt.Println(ANS)
}

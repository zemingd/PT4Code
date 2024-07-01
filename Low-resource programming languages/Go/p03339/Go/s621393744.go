package main
 
import (
	"fmt"
)
 
func main() {
	var n, c, m int
	var s string
	fmt.Scan(&n, &s)
	t := []rune(s)
	for i := 1; i < n; i++ {
		c = 0
		l := map[string]int{}
		r := map[string]int{}
		for j := 0; j < i; j++ {
			l[string(t[j])]++
		}
		for v := i; v < n; v++ {
			r[string(t[v])]++
		}
		for k, _ := range l {
			if r[k] > 0 {
				c++
			}
		}
		if c <= m {
			m = c
		}
	}
	fmt.Println(m)
}
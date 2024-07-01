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
		l, r:= map[string]int{}
      	le := string(t[i-1])
		for j := 0; j < i; j++ {
			l[string(t[j])]++
		}
		for v := i; v < n; v++ {
			r[string(t[v])]++
		}
		for k, va := range l {
			if k != le {
				c += va
			}
		}
      	for k, va := range r {
			if k = le {
				c += va
			}
		}
		if c <= m {
			m = c
		}
	}
	fmt.Println(m)
}
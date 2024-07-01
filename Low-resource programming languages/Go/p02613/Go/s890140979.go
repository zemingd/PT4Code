package main

import (
	"fmt"
)

func main() {
	var n, a, b, c, d, i int32
	_, _ = fmt.Scan(&n)
	s := make([]string, n)
	for i=0; i<n; i++ {
		_, _ = fmt.Scan(&s[i])
	}

	for i=0; i<n; i++{
		switch {
		case s[i]=="AC":
			a += 1
		case s[i]=="WA":
			b += 1
		case s[i]=="TLE":
			c += 1
		case s[i]=="RE":
			d += 1
		}
	}
	fmt.Printf("AC x　%d\n", a)
	fmt.Printf("WA x %d\n", b)
	fmt.Printf("TLE x %d\n", c)
	fmt.Printf("RE x %d\n", d)
}
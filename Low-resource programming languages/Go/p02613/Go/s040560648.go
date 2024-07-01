package main

import (
	"fmt"
)

func main() {
	var n, ac, wa, tle, re, i int32
	_, _ = fmt.Scan(&n)
	s := make([]string, n)
	for i=0; i<n; i++ {
		_, _ = fmt.Scan(&s[i])
	}

	for i=0; i<n; i++{
		if s[i]=="AC"{
			ac += 1
		}else if s[i]=="WA"{
			wa += 1
		}else if s[i]=="TLE"{
			tle += 1
		}else if s[i]=="RE" {
			re += 1
		}
	}
	fmt.Printf("AC x　%d\n", ac)
	fmt.Printf("WA x %d\n", wa)
	fmt.Printf("TLE x %d\n", tle)
	fmt.Printf("RE x %d\n", re)
}
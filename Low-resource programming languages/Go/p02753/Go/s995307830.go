package main

import (
	"fmt"
)

func main() {
	var str string
	fmt.Scan(&str)
	s := make([]byte, 0, 3*10^5)
	s = append(s, []byte(str)...)
	var n int
	fmt.Scan(&n)
	b := false

	for i := 0; i < n; i++ {
		func() {
			var t int
			fmt.Scan(&t)
			if t == 1 {
				b = !b
			} else {
				var f int
				var c string
				fmt.Scan(&f, &c)
				cbyte := []byte(c)[0]
				fmt.Printf("%v\n", cbyte)
				f = func(b bool, f int) int {
					if b == false {
						return f
					} else if f == 1 {
						return 2
					}
					return 1
				}(b, f)
				if f == 1 {
					s, s[0] = append(s[:1], s[0:]...), cbyte
				} else if f == 2 {
					s = append(s, cbyte)
				}
			}
		}()
	}
	if b {
		s = func(s []byte) []byte {
			for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
				s[i], s[j] = s[j], s[i]
			}
			return s
		}(s)
	}
	fmt.Printf("%s", s)
}

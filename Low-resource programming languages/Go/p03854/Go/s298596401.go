package main

import (
	"fmt"
)

func Reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func main() {
	var s string
	ss := []string{"maerd", "remaerd", "esare", "resare"}
	fmt.Scan(&s)
	s = Reverse(s)
	for i := 0; i < len(s); {
		b := false
		for j := 0; j < 4; j++ {
			if i+len(ss[j]) > len(s) {
				continue
			}
			if s[i:i+len(ss[j])] == ss[j] {
				b = true
				i += len(ss[j])
			}
		}
		if b == false {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}

package main

import "fmt"

var subs = [...]string{"dream", "dreamer", "erase", "eraser"}

func main() {
	var s string
	fmt.Scan(&s)
	for len(s) > 0 {
		ok := false
		for i := range subs {
			if len(s) >= len(subs[i]) {
				if s[len(s)-len(subs[i]):] == subs[i] {
					ok = true
					s = s[:len(s)-len(subs[i])]
				}
			}
		}
		if !ok {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}

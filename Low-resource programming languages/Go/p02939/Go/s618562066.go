package main

import "fmt"

var s string

func main() {
	fmt.Scanf("%s", &s)

start:
	for start := 1; start <= len(s); start++ {
		last := s[0:start]
		count := 1
		p := start
		for {
			q := p + 1
			if p == len(s) {
				fmt.Println(count)
				return
			}
			if s[p:q] == last {
				q++
			}
			if q > len(s) {
				continue start
			}
			last = s[p:q]
			p = q
			count++
		}
	}
}

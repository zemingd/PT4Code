package main

import "fmt"

func main() {
	var n, k, r, s, p, point int
	var t string
	fmt.Scan(&n, &k, &r, &s, &p, &t)
	me := make([]rune, n)
	for i := 0; i < n; i++ {
		switch t[i] {
		case 'r':
			if i >= k && me[i-k] == 'p' {
				continue
			}
			point += p
			me[i] = 'p'
		case 's':
			if i >= k && me[i-k] == 'r' {
				continue
			}
			point += r
			me[i] = 'r'
		case 'p':
			if i >= k && me[i-k] == 's' {
				continue
			}
			point += s
			me[i] = 's'
		}
	}
	fmt.Printf("%d", point)
}

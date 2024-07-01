package main

import "fmt"

func main() {
	var s, t []byte
	fmt.Scanf(`%s
%s
`, &s, &t)
	for range s {
		for i := range s[1:] {
			if s[i+1] < s[i] {
				s[i+1], s[i] = s[i], s[i+1]
			}
		}
	}
	for range t {
		for i := range t[1:] {
			if t[i+1] < t[i] {
				t[i+1], t[i] = t[i], t[i+1]
			}
		}
	}
	if Lt(s, t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func Lt(a, b []byte) bool {
	la, lb := len(a), len(b)
	l := min(la, lb)
	for i := 0; i < l; i++ {
		if a[i] < b[i] {
			return true
		} else if a[i] > b[i] {
			return false
		}
	}
	if la < lb {
		return true
	}
	return false
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

package main

import "fmt"

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&n, &a, &b, &c, &d, &s)
	a, b, c, d = a-1, b-1, c-1, d-1

	dot3 := false

	for i := 0; i < len(s)-1; i++ {
		if i < len(s)-2 && s[i] == '.' && s[i+1] == '.' && s[i+2] == '.' {
			if b < i && i < d {
				dot3 = true
			}
		}

		if s[i] == '#' && s[i+1] == '#' {
			if (a < i && i < c) || (b < i && i < d) {
				fmt.Println("No")
				return
			}
		}
	}

	if d < c && !dot3 {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
}

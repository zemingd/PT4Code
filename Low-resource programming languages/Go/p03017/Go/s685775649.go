package main

import "fmt"

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&n, &a, &b, &c, &d, &s)

	dot3 := false

	for i := 0; i < len(s)-1; i++ {
		if i < len(s)-2 && s[i] == '.' && s[i+1] == '.' && s[i+2] == '.' {
			dot3 = true
		}

		if s[i] == '#' && s[i+1] == '#' {
			if (a < i && i < c) || (b < i && i < d) {
				fmt.Println("No")
				return
			}
			if i < a || i < b {
				dot3 = false
			}
			if d < c && (c < i || d < i) {
				break
			}
		}
	}

	if d < c && !dot3 {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
}

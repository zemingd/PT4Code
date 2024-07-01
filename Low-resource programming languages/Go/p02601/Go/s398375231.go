package main

import "fmt"

func main() {
	a, b, c, k := 0, 0, 0, 0
	fmt.Scanf("%d %d %d", &a, &b, &c)
	fmt.Scanf("%d", &k)
	if aa(a, b, c, k) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
func aa(a, b, c, k int) bool {
	for {
		if b < a {
			b *= 2
			k--
		} else {
			break
		}
		if k <= 0 {
			if c <= b {
				return false
			} else {
				return true
			}
		}
	}
	for {
		if c < b {
			c *= 2
			k--
		} else {
			return true
		}
		if k < 0 {
			return false
		}
	}
}

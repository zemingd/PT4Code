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
		if b <= a {
			b *= 2
			k--
		} else {
			break
		}
		if k <= 0 {
			if c <= b {
                 //fmt.Println("b")
				return false
			} else {
              //fmt.Println("a")
				return true
			}
		}
	}
	for {
		if c <= b {
			c *= 2
			k--
		} else {
             //fmt.Println("d")
			return true
		}
		if k < 0 {
             //fmt.Println("e")
			return false
		}
	}
}

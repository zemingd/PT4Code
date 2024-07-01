package main

import "fmt"

func main() {
	var s string
	var k int

	fmt.Scanf("%s", &s)
	fmt.Scanf("%d", &k)

	var c int = 0
	var head int = 1
	for i := 1; i < len(s); i++ {
		if s[i] == s[i-1] {
			head++
		} else {
			break
		}
	}
	if head == len(s) {
		if head*k%2 == 0 {
			c = head * k / 2
		} else {
			c = (head*k - 1) / 2
		}
		fmt.Printf("%d\n", c)
		return
	}

	var back int = 1
	for i := len(s) - 1; i > 0; i-- {
		if s[i] == s[i-1] {
			back++
		} else {
			break
		}
	}

	for i := 0; i < len(s)-1; i++ {
		if s[i] == s[i+1] {
			c++
			i++
		}
	}

	c *= k

	if s[0] == s[len(s)-1] {
		var m = head + back

		if m%2 == 0 {
			c += (m / 2) * (k - 1)
		} else {
			c += ((m - 1) / 2) * (k - 1)
		}
		if head != 1 {
			if head%2 == 0 {
				c -= (head / 2) * (k - 1)
			} else {
				c -= ((head - 1) / 2) * (k - 1)
			}
		}
		if back != 1 {
			if back%2 == 0 {
				c -= (back / 2) * (k - 1)
			} else {
				c -= ((back - 1) / 2) * (k - 1)
			}
		}
	}

	fmt.Printf("%d\n", c)
}

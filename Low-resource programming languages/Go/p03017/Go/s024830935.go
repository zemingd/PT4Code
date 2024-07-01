package main

import "fmt"

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&n, &a, &b, &c, &d, &s)
	a--
	b--
	c--
	d--
	if c < d {
		for {
			if b+1 == d || b+2 == d {
				break
			}
			if s[b+1] == '.' {
				b++
				continue
			}
			if s[b+2] == '.' {
				b += 2
				continue
			}
			fmt.Println("No")
			return
		}
		for {
			if a+1 == c || a+2 == c {
				break
			}
			if s[a+1] == '.' {
				a++
				continue
			}
			if s[a+2] == '.' {
				a += 2
				continue
			}
			fmt.Println("No")
			return
		}
		fmt.Println("Yes")
		return
	}
	for {
		no := true
		for a != c {
			if s[a+1] == '.' && a+1 != b {
				a++
				no = false
				continue
			}
			if s[a+2] == '.' && a+2 != b {
				a += 2
				no = false
				continue
			}
			break
		}
		for {
			if b == d {
				if a == c {
					fmt.Println("Yes")
					return
				}
				fmt.Println("No")
				return
			}
			if s[b+1] == '.' && b+1 != a {
				b++
				no = false
				break
			}
			if s[b+2] == '.' && b+2 != a {
				b += 2
				no = false
				break
			}
		}
		if no {
			fmt.Println("No")
			return
		}
	}
}

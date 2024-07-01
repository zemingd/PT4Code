package main

import "fmt"

func main() {
	var s string
	fmt.Scanln(&s)

	ok := true
	cFound := false
	for i, c := range s {
		if i == 0 {
			if c != 'A' {
				ok = false
				break
			}
		} else {
			if 2 <= i && i <= len(s)-2 {
				if c == 'C' {
					if cFound {
						ok = false
						break
					} else {
						cFound = true
						continue
					}
				}
			}
			if c < 'a' || 'z' < c {
				ok = false
				break
			}
		}
	}

	if ok && cFound {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}

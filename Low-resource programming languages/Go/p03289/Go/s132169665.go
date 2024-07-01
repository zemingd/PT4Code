package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	ok := false
	for i := 2; i <= len(s)-2; i++ {
		if s[i] == 'C' {
			ok = true
		}
	}
	if !ok {
		fmt.Println("WA")
		return
	}

	var ct int
	for i := 0; i < len(s); i++ {
		if 'A' <= s[i] && s[i] <= 'Z' {
			ct++
		}
	}
	if ct > 2 {
		fmt.Println("WA")
		return
	}

	fmt.Println("AC")
}

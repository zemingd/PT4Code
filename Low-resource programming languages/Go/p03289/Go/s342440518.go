package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	flagLargeC := 0
	for i := 2; i < len(s)-1; i++ {
		if s[i] == 'C' {
			flagLargeC++
		}
	}
	if flagLargeC != 1 {
		fmt.Println("WA")
		return
	}

	flagCapital := 0
	for i := range s {
		if s[i] >= 65 && s[i] <= 90 {
			flagCapital++
		}
	}
	if flagCapital != 2 {
		fmt.Println("WA")
		return
	}

	fmt.Println("AC")
}

package main

import (
	"fmt"
)

func abs(n int) (m int) {
	if n < 0 {
		m = -n
	} else {
		m = n
	}
	return
}

func rune2int(r rune) int {
	return int(r) - 48
}

func main() {
	var s string
	fmt.Scan(&s)
	var diff int = 753
	for i := 0; i < len(s)-2; i++ {
		var tmp int = rune2int(rune(s[i]))*100 + rune2int(rune(s[i+1]))*10 + rune2int(rune(s[i+2]))*1
		if y := abs(753 - tmp); y < diff {
			diff = y
		}
	}
	fmt.Println(diff)
}

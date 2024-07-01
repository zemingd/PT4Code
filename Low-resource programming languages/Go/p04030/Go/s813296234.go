package main

import (
	"fmt"
)

func main() {
	var s string

	fmt.Scan(&s)

	var ans string
	for _, char := range s {
		if char == '0' {
			ans += string('0')
		} else if char == '1' {
			ans += string('1')
		} else if char == 'B' && ans != "" {
			tmp := []rune(ans)
			ans = string(tmp[:(len(tmp) - 1)])
		}
	}

	fmt.Println(ans)

}

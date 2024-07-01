package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)

	flg := false
	count := 0
	for _, rune := range s {
		if rune == 'R' {
			if flg {
				count++
			} else {
				flg = true
				count = 1
			}
		} else {
			flg = false
		}
	}

	fmt.Print(count)
}
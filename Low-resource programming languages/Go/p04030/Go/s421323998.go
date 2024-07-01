package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	var ans string
	for _, c := range s {
		switch c {
		case '0':
			ans += "0"
		case '1':
			ans += "1"
		case 'B':
			if len(ans) != 0 {
				ans = ans[:len(ans)-1]
			}
		}
	}
	fmt.Println(ans)
}

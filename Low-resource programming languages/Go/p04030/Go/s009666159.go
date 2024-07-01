package main

import "fmt"

func main() {
	var input string
	fmt.Scan(&input)

	ans := ""

	for _, r := range input {
		switch r {
		case '0':
			ans += "0"
		case '1':
			ans += "1"
		case 'B':
			length := len(ans)
			if length > 0 {
				ans = ans[:length-1]
			}
		}
	}

	fmt.Println(ans)
}

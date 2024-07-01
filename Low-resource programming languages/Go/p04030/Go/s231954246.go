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
			ans = ans[:(len(ans) - 1)]
		}
	}

	fmt.Println(ans)
}

package main

import "fmt"

func main() {
	var s, ans string
	fmt.Scan(&s)
	for _, letter := range s {
		switch letter {
		case '0':
			ans += "0"
		case '1':
			ans += "1"
		case 'B':
			if ans != "" {
				trim := ans[:len(ans)-1]
				ans = trim
			}
		}
	}
	fmt.Println(ans)
}

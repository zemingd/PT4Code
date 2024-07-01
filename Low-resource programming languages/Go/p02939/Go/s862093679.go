package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	x := ""
	ans := 0
	for i := 0; ; {
		if i+2 == len(s) {
			if s[i:i+1] != s[i+1:i+2] {
				ans++
			}
			ans++
			break
		} else if i+1 == len(s) {
			ans++
			break
		}

		if x != s[i:i+1] {
			x = s[i : i+1]
			i++
		} else {
			x = s[i : i+2]
			i += 2
		}
		ans++
	}
	fmt.Println(ans)
}

package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ans := ""
	for i := 0; i < len(s); i++ {
		if i%2 == 0 {
			ans += s[i : i+1]
		}
	}
	fmt.Println(ans)
}

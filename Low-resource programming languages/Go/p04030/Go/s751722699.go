package main

import "fmt"

func main() {
	var s, ans string
	fmt.Scan(&s)
	for _, v := range s {
		if v == '0' || v == '1' {
			ans += string(v)
		} else if len(ans) > 0 {
			ans = ans[:len(ans)-1]
		}
	}
	fmt.Println(ans)
}
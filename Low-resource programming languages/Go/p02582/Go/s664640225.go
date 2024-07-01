package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)

	ans := 0
	cont := 0
	for i := 0; i < len(s); i++ {
		if s[i] == 'R' {
			ans += 1
		} else {
			ans = 0
		}
		if cont < ans {
			cont = ans
		}
	}
	fmt.Println(cont)
}

package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	n := len(s)

	if n == 1 {
		fmt.Println(1)
		return
	}
	if n == 2 {
		if s[0] != s[1] {
			fmt.Println(2)
		} else {
			fmt.Println(1)
		}
		return
	}

	ans := 0
	prev := byte('A')
	for i := 0; i < n; i++ {
		if now := s[i]; now != prev {
			prev = now
		} else {
			if i == n-1 {
				break
			}
			i++
			prev = 'A'
		}
		ans++
	}
	fmt.Println(ans)
}

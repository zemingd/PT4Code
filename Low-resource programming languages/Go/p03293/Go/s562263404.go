package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	if s == t {
		fmt.Println("Yes")
	} else {
		for i := 0; i < len(s); i++ {
			s = s[1:] + string(s[0])
			if s == t {
				fmt.Println("Yes")
				break
			}
			if i == len(s)-1 {
				fmt.Println("No")
			}
		}
	}
}

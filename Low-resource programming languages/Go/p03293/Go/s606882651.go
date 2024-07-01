package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	for i := 0; i < len(s); i++ {
		if (s[i:] + s[:i]) == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}

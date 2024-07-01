package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	a := ""
	for i := 0; i < len(s); i++ {
		if s[i] != 'B' {
			a += string(s[i])
		} else if len(a) > 0 {
			a = a[:len(a)-1]
		}
	}
	fmt.Println(string(a))
}

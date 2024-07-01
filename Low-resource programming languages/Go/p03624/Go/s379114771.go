package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(alpha(s))
}

func alpha(s string) string {
	a := map[byte]int{}
	for i := range s {
		a[s[i]]++
	}
	for i := 97; i <= 122; i++ {
		if a[byte(i)] == 0 {
			return string(i)
		}
	}
	return "None"
}

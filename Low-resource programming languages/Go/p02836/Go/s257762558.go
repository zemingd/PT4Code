package main

import "fmt"

func main() {
	var (
		s     string = "vvvvvv"
		count int
	)
	fmt.Scan(&s)

	sLen := len(s)
	for i := 0; i < sLen/2; i++ {
		lead := s[i : i+1]
		back := s[sLen-i-1 : sLen-i]
		if lead != back {
			count++
		}
	}
	fmt.Println(count)
}

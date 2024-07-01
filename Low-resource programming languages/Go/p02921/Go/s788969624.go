package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	var cnt int
	for i := 0; i < 3; i++ {
		str1 := s[i : i+1]
		str2 := t[i : i+1]

		if str1 == str2 {
			cnt++
		}
	}

	fmt.Println(cnt)
}

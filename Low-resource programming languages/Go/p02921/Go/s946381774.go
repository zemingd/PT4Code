package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	cnt := 0
	for i := 0; i < 3; i++ {
		if s[i:i+1] == t[i:i+1] {
			cnt++
		}
	}
	fmt.Println(cnt)
}

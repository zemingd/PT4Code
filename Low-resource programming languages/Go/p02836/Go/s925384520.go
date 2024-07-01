package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var cnt int
	for i := 0; i < len(s)/2; i++ {
		if string(s[i]) != string(s[len(s)-i-1]) {
			cnt++
		}
	}
	fmt.Println(cnt)
}

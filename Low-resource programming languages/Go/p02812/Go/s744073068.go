package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	r := []rune(s)
	ans := 0
	for i:=0; i<n-2; i++ {
		if string(r[i:i+3]) == "ABC" {
			ans++
		}
	}
	fmt.Println(ans)
}
package main

import "fmt"

func main() {
	var n int
	var s,t string
	fmt.Scan(&n,&s,&t)
	var ans string

	for i := 0; i < n; i++ {
		ans += string(s[i])
		ans += string(t[i])
	}
	fmt.Println(ans)
}

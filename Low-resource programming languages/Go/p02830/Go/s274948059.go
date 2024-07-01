package main

import "fmt"

func main() {
	var n int
	var s, t string
	fmt.Scan(&n, &s, &t)

	var res string
	for i := 0; i < n; i++ {
		res = res + string(s[i]) + string(t[i])
	}
	fmt.Println(res)
}

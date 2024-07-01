package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	ans := ""
	p := ""
	for _, c := range s {
		t := string(c)
		if p != t {
			ans += t
		}
		p = t
	}

	fmt.Println(len(ans))
}

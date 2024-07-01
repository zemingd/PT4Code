package main

import "fmt"

func main() {
	var n int
	var s, t string
	fmt.Scanf("%d\n%s %s", &n, &s, &t)
	for i := 0; i < n; i++ {
		fmt.Printf("%c%c", s[i], t[i])
	}
}
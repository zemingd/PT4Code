package main

import (
	"fmt"
)

func main() {
	var n int
	var s, t string
	fmt.Scanf("%d", &n)
	fmt.Scanf("%s %s", &s, &t)
	ans := ""
	for i := 0; i < n; i++ {
		ans = ans + string(s[i]) + string(t[i])
	}
	fmt.Println(ans)
}

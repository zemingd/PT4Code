package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s, t string

	fmt.Scanf("%d", &n)
	if n < 1 || n > 100 {
		return
	}

	fmt.Scanf("%s %s", &s, &t)
	if len(s) != n || len(t) != n {
		return
	}

	ss := strings.Split(s, "")
	st := strings.Split(t, "")

	var ans string
	for i := 0; i < n; i++ {
		ans += ss[i] + st[i]
	}
	fmt.Printf("%s\n", ans)
}

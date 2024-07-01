package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	_s := strings.Split(s, "")

	var ans string
	for i := 0; i < len(_s); i++ {
		if _s[i] == "B" {
			if len(ans) > 0 {
				ans = ans[0:len(ans) - 1]
			}
			continue
		}
		ans = ans + _s[i]
	}

	fmt.Println(ans)
}

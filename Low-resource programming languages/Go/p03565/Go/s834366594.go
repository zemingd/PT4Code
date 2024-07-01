package main

import (
	"fmt"
	"strings"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	N1, N2 := len(S), len(T)
	for i := 0; i <= (N1 - N2); i++ {
		flg := true
		for j, s := range S[i : i+N2] {
			if s == '?' {
				continue
			}
			if s != rune(T[j]) {
				flg = false
				break
			}
		}

		if flg {
			ans := S[:i-1] + T + S[i+N2:]
			ans = strings.Replace(ans, "?", "a", -1)
			fmt.Println(ans)
			return
		}
	}

	fmt.Println("UNRESTORABLE")
}

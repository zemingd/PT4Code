package main

import (
	"fmt"
)

func main() {
	var (
		N    int
		S, T string
	)

	fmt.Scanf("%d", &N)
	fmt.Scanf("%s %s", &S, &T)

	ans := ""
	for i := 0; i < N; i++ {
		ans += string(S[i])
		ans += string(T[i])
	}
	fmt.Println(ans)
}

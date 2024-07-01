package main

import (
	"fmt"
)

func main() {
	var N int
	var S,T,ans string
	fmt.Scan(&N,&S,&T)
	
	for i := 0; i < N; i++ {
		ans += string(S[i]) + string(T[i])
	}
	fmt.Println(ans)
}
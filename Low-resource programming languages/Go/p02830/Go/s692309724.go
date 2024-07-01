package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	wtr := bufio.NewWriter(os.Stdout)
	var N int
	var S, T string
	fmt.Scan(&N)
	fmt.Scan(&S, &T)
	ans := ""
	for i := 0; i < N; i++ {
		ans += string(S[i]) + string(T[i])
	}
	fmt.Println(ans)
	wtr.Flush()
}

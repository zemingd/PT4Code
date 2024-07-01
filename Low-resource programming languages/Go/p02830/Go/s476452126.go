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
	ans := make([]byte, N*2)
	for i := 0; i < N; i++ {
		ans = append(ans, S[i])
		ans = append(ans, T[i])
	}
	result := string(ans)
	fmt.Println(result)
	wtr.Flush()
}

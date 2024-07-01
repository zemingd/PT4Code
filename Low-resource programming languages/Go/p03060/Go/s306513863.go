package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	// init
	var N int
	fmt.Scan(&N)
	VS := make([]int, N)
	CS := make([]int, N)
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		fmt.Scan(&VS[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&CS[i])
	}

	// loop
	ans := 0
	for i := 0; i < N; i++ {
		if VS[i] > CS[i] {
			ans += VS[i] - CS[i]
		}
	}

	// output
	fmt.Println(ans)
}
package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	var N, K int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &N)
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &K)

	posOne := -1
	as := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &as[i])
		if as[i] == 1 {
			posOne = i
		}
	}

	left := (posOne + (K - 1) - 1) / (K - 1)
	right := ((N - 1 - posOne) + (K - 1) - 1) / (K - 1)
	fmt.Println(left + right)
}

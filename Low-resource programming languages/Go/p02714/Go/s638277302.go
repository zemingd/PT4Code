package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve(N int64, S string) {
	m := make(map[byte]int64, 3)
	for i := 0; i < len(S); i++ {
		m[S[i]]++
	}

	ans := m['R'] * m['G'] * m['B']

	for i := 0; i < len(S); i++ {
		for d := 0; d <= len(S); d++ {
			j, k := i+d, i+2*d
			if k >= len(S) {
				continue
			}
			if S[i] != S[j] && S[j] != S[k] && S[k] != S[i] {
				ans--
			}
		}
	}

	fmt.Println(ans)
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var N int64
	scanner.Scan()
	N, _ = strconv.ParseInt(scanner.Text(), 10, 64)
	var S string
	scanner.Scan()
	S = scanner.Text()
	solve(N, S)
}

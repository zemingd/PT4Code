package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var N int64
	scanner.Scan()
	N, _ = strconv.ParseInt(scanner.Text(), 10, 64)
	var K int64
	scanner.Scan()
	K, _ = strconv.ParseInt(scanner.Text(), 10, 64)
	var S string
	scanner.Scan()
	S = scanner.Text()
	fmt.Println(solve(N, K, S))
}
func solve(N int64, K int64, S string) string {
	m := map[rune]rune{'A': 'a', 'B': 'b', 'C': 'c'}
	s := []rune(S)
	s[K-1] = m[s[K-1]]
	return string(s)
}

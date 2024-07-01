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
	var S string
	scanner.Scan()
	S = scanner.Text()
	fmt.Println(solve(N, S))
}
func solve(N int64, S string) int {
	ss := []rune(S)
	cnt := 0
	for i := 0; i < int(N-2); i++ {
		for j := i + 1; j < int(N-1); j++ {
			if ss[i] == ss[j] {
				continue
			}
			for k := j + 1; k < int(N); k++ {
				if j-i == k-j {
					continue
				}
				if ss[i] != ss[j] && ss[i] != ss[k] && ss[j] != ss[k] {
					cnt++
				}
			}
		}
	}
	return cnt
}

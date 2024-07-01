package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve(N int64) {
	ans := int64(0)
	for i := int64(1); i <= N; i++ {
		if i%3 != 0 && i%5 != 0 {
			ans += i
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
	solve(N)
}

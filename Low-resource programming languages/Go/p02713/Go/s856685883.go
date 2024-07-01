package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func gcd(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func solve(K int64) {
	ans := int64(0)
	for i := int64(1); i <= K; i++ {
		for j := int64(1); j <= K; j++ {
			for k := int64(1); k <= K; k++ {
				ans += gcd(i, gcd(j, k))
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
	var K int64
	scanner.Scan()
	K, _ = strconv.ParseInt(scanner.Text(), 10, 64)
	solve(K)
}

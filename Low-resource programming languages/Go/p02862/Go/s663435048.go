package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	const M = 1000000007

	X := readInt()
	Y := readInt()

	if (X+Y)%3 != 0 {
		fmt.Println(0)
		return
	}

	a := X - (X+Y)/3
	b := Y - (X+Y)/3

	if a < 0 || b < 0 {
		fmt.Println(0)
		return
	}

	dp := make([][]int, b+1)
	for i := 0; i < b+1; i++ {
		dp[i] = make([]int, a+1)
	}

	dp[0][0] = 1
	for i := 0; i < b; i++ {
		for j := 0; j < a; j++ {
			dp[i][j+1] = (dp[i][j+1] + dp[i][j]) % M
			dp[i+1][j] = (dp[i+1][j] + dp[i][j]) % M
		}
		dp[i+1][a] = (dp[i+1][a] + dp[i][a]) % M
	}
	for j := 0; j < a; j++ {
		dp[b][j+1] = (dp[b][j+1] + dp[b][j]) % M
	}
	fmt.Println(dp[b][a])
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}

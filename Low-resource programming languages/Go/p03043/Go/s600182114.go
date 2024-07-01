package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getNextLine(scanner *bufio.Reader) string {
	var buffer string
	for {
		line, isPrefix, _ := scanner.ReadLine()
		buffer += string(line)
		if isPrefix == false {
			break
		}
	}
	return buffer
}

func getIntList(scanner *bufio.Reader) []int {
	list := strings.Split(getNextLine(scanner), " ")
	l := len(list)
	result := make([]int, l)
	for i := 0; i < l; i++ {
		result[i], _ = strconv.Atoi(list[i])
	}
	return result
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewReader(fp)

	var n, k int
	fmt.Sscan(getNextLine(scanner), &n, &k)
	dp := make([]float64, 200000+1)
	for i := 1; i <= n; i++ {
		dp[i] = 1 / float64(n)
	}
	var ans float64
	for i := 0; i < k; i++ {
		dp[i*2] += dp[i] / 2.0
	}
	for i := k; i <= 200000; i++ {
		ans += dp[i]
	}
	fmt.Println(ans)
}

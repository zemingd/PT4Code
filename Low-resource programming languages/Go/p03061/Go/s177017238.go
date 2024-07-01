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

func gcd(m, n int) int {
	if m < n {
		m, n = n, m
	}
	if n == 0 {
		return m
	}
	return gcd(n, m%n)
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewReader(fp)

	var n int
	fmt.Sscan(getNextLine(scanner), &n)
	aa := getIntList(scanner)
	dp := make([]int, n+2)
	dp2 := make([]int, n+2)
	dp[0] = 0
	dp2[0] = 0
	for i := 0; i < n; i++ {
		dp[i+1] = gcd(dp[i], aa[i])
		dp2[i+1] = gcd(dp2[i], aa[n-1-i])
	}
	max := 0
	var ans int
	for i := 1; i <= n; i++ {
		ans = gcd(dp[i-1], dp2[n-i])
		if max < ans {
			max = ans
		}
	}

	fmt.Println(max)
}

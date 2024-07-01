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
	mod := m % n
	ans := n
	for mod > 0 {
		ans = mod
		m, n = n, mod
		if m < n {
			m, n = n, m
		}
		mod = m % n
	}
	return ans
}

func isDiv(x int) bool {
	for i := 2; i <= x/2; i++ {
		if x%i == 0 {
			return false
		}
	}
	return true
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
	dp := make([]int, n)
	aam := make([]int, n)
	max := 0
	dp[0] = aa[0]
	for i := 1; i < n; i++ {
		dp[i] = gcd(dp[i-1], aa[i])
	}
	index := -1
	for i := 0; i < n; i++ {
		aam[i] = aa[i] / dp[n-1]
		if isDiv(aam[i]) == true && max < aam[i] {
			max = aam[i]
			index = i
		}
	}
	dp[0] = aa[0]
	for i := 0; i < n; i++ {
		if i == 0 {
			if i == index {
				dp[i] = aa[i+1]
			} else {
				dp[i] = aa[i]
			}
			continue
		}
		if i == index {
			dp[i] = dp[i-1]
			continue
		}
		dp[i] = gcd(dp[i-1], aa[i])
	}

	fmt.Println(dp[n-1])
}

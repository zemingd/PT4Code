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
	dp2 := make([]int, n)
	dp[0] = aa[0]
	dp[0] = aa[n-1]
	for i := 1; i < n; i++ {
		dp[i] = gcd(dp[i-1], aa[i])
		dp2[i] = gcd(dp2[i-1], aa[n-1-i])
	}
	max := 0
	var ans int
	for i := 0; i < n; i++ {
		if i == 0 {
			ans = dp2[n-2-i]
		} else {
			if i == n-1 {
				ans = dp[i-1]
			} else {
				ans = gcd(dp[i], dp2[n-2-i])
			}
		}
		if max < ans {
			max = ans
		}
	}

	fmt.Println(max)
}

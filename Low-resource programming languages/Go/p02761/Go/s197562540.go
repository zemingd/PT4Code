package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func exists(n, m int, s, c []int) bool {
	if n >= 2 {
		for i := 0; i < m; i++ {
			if s[i] == 1 && c[i] == 0 {
				return false
			}
		}
	}
	return true
}

func solve(n, m int, s, c []int) int {
	if !exists(n, m, s, c) {
		return -1
	}

	digitNum := make(map[int]int)
	for i := 0; i < m; i++ {
		num, ok := digitNum[s[i]]
		if ok && num != c[i] {
			return -1
		}
		digitNum[s[i]] = c[i]
	}

	ans := 0
	for i := 1; i <= n; i++ {
		num := digitNum[i]
		if num == 0 && i == 1 {
			num = 1
		}
		ans += num * int(math.Pow10(n-i))
	}
	return ans
}

func main() {
	n, _ := strconv.Atoi(input())
	m, _ := strconv.Atoi(input())
	s := make([]int, m)
	c := make([]int, m)
	for i := 0; i < m; i++ {
		s[i], _ = strconv.Atoi(input())
		c[i], _ = strconv.Atoi(input())
	}
	fmt.Println(solve(n, m, s, c))
}

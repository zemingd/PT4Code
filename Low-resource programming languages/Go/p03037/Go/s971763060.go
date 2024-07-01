package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// Gate Data
type Gate struct {
	left, right int
}

func maxInt(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func solve(cardNum, gateNum int, gates []Gate) int {
	left := 1
	right := cardNum
	for _, g := range gates {
		left = maxInt(left, g.left)
		right = minInt(right, g.right)
	}
	if left > right {
		return 0
	}
	return right - left + 1
}

func main() {
	var n, m int
	var gates []Gate
	fmt.Scanln(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	for i := 0; i < m; i++ {
		sc.Scan()
		l, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		r, _ := strconv.Atoi(sc.Text())
		gates = append(gates, Gate{l, r})
	}
	ans := solve(n, m, gates)
	fmt.Println(ans)
}

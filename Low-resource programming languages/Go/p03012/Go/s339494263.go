package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func submit(n int, line string) int {
	W := make([]int, 0, n)
	for _, s := range strings.Split(line, " ") {
		w, _ := strconv.Atoi(s)
		W = append(W, w)
	}

	var i, r, l int
	j := n - 1
	for i <= j {
		if r < l {
			r += W[i]
			i++
		} else {
			l += W[j]
			j--
		}
	}

	return abs(r - l)
}

func main() {
	line := nextLine()
	n, _ := strconv.Atoi(line)
	line = nextLine()
	ans := submit(n, line)
	fmt.Println(ans)
}

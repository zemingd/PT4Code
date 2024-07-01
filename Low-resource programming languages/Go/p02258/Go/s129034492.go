package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	n := scanInt(stdin)
	stdin.Scan()
	minv := scanInt(stdin)
	gap := -2000000000

	for stdin.Scan() {
		r := scanInt(stdin)
		gap = max(gap, r-minv)
		minv = min(minv, r)
		n = n - 1
		if n == 0 {
			break
		}
	}
	fmt.Println(gap)
}

func scanInt(sc *bufio.Scanner) int {
	t := sc.Text()
	i, err := strconv.Atoi(t)
	if err != nil {
		panic(err)
	}
	return i
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}


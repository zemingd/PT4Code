package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func toI(ss []string) []int {
	ret := make([]int, 0, len(ss))
	for _, s := range ss {
		n, _ := strconv.Atoi(strings.TrimSpace(s))
		ret = append(ret, n)
	}
	return ret
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)

	reader := bufio.NewReader(os.Stdin)

	A, _ := reader.ReadString('\n')

	a := toI(strings.Split(A, " "))

	var sum int64
	sum = int64(a[len(a)-1])
	for i := len(a) - 1; i > 0; i-- {
		sum += int64(min(a[i], a[i-1]))
	}
	fmt.Println(sum)
}

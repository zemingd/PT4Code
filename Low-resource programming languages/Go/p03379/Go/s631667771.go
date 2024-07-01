package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	line := nextLine()
	n, _ := strconv.Atoi(line)

	line = nextLine()
	x := make([]int64, n)
	for i, s := range strings.Split(line, " ") {
		t, _ := strconv.ParseInt(s, 10, 64)
		x[i] = t
	}

	sorted := make([]int64, len(x))
	copy(sorted, x)
	sort.Slice(sorted, func(i, j int) bool {
		return sorted[i] < sorted[j]
	})

	c1 := sorted[len(x)/2-1]
	c2 := sorted[len(x)/2]
	for _, xi := range x {
		if xi <= c1 {
			fmt.Println(c2)
		} else {
			fmt.Println(c1)
		}
	}
}

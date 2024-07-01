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

type xx []int64

func (a xx) Len() int           { return len(a) }
func (a xx) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a xx) Less(i, j int) bool { return a[i] < a[j] }

func main() {
	line := nextLine()
	n, _ := strconv.Atoi(line)

	line = nextLine()
	x := make(xx, n)
	for i, s := range strings.Split(line, " ") {
		t, _ := strconv.ParseInt(s, 10, 64)
		x[i] = t
	}

	sorted := make(xx, len(x))
	copy(sorted, x)
	sort.Sort(sorted)
	// sort.Slice(sorted, func(i, j int) bool {
	// 	return sorted[i] < sorted[j]
	// })

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

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func mainFn() {
	n := getInt()
	ls := getIntSlice(n)
	lsRev := make([]int, n)
	copy(lsRev, ls)
	sort.Ints(ls)
	sort.Sort(sort.Reverse(sort.IntSlice(lsRev)))

	ans := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			p, q := min(ls[i], ls[j]), max(ls[i], ls[j])
			x, y := q-p, q+p

			l := sort.Search(len(ls), func(i int) bool { return ls[i] > x })
			r := n - sort.Search(len(lsRev), func(i int) bool { return lsRev[i] < y })

			sum := r - l
			if (i >= l) && (i <= r) {
				sum--
			}
			if (j >= l) && (j <= r) {
				sum--
			}
			sum = max(0, sum)
			ans += sum
		}
	}

	ans /= 3
	puts(ans)
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

// -----------------------------------------

var (
	scanner = bufio.NewScanner(os.Stdin)
	writer  = bufio.NewWriter(os.Stdout)
)

func main() {
	// buf := 200001
	// scanner.Buffer(make([]byte, buf), buf)
	scanner.Split(bufio.ScanWords)
	mainFn()
	writer.Flush()
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}

func puts(a ...interface{}) {
	if _, err := fmt.Fprintln(writer, a...); err != nil {
		panic(err)
	}
}

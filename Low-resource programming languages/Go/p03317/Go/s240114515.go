package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = NewScanner()

func main() {
	n := sc.NextInt()
	k := sc.NextInt()

	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = sc.NextInt()
	}

	sort.Ints(a)

	min := a[0]
	i := 0
	for ; i < n; i++ {
		if min != a[i] {
			break
		}
	}
	result := (n - i) / (k - 1)
	if (n-i)%(k-1) > 0 {
		result += 1
	}
	fmt.Println(result)
}

type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return &Scanner{sc}
}

func (sc *Scanner) NextInt() int {
	sc.sc.Scan()
	i, err := strconv.Atoi(sc.sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
}

func ScanInt() (ret int) {
	var err error
	if scanner.Scan() {
		txt := scanner.Text()
		if ret, err = strconv.Atoi(txt); err != nil {
			_, _ = fmt.Fprintf(os.Stderr, err.Error())
		}
	}
	return
}

type Pair struct{ A, B int }

func main() {
	n, m := ScanInt(), ScanInt()

	pairs := make([]Pair, n)
	for i := 0; i < n; i++ {
		pairs[i].A, pairs[i].B = ScanInt(), ScanInt()
	}
	sort.Slice(pairs, func(i, j int) bool {
		return pairs[i].A < pairs[j].A
	})

	money := 0
	for i := 0; i < n; i++ {
		if m-pairs[i].B <= 0 {
			money += m * pairs[i].A
			break
		} else {
			money += pairs[i].A * pairs[i].B
			m -= pairs[i].B
		}
	}
	fmt.Println(money)
}

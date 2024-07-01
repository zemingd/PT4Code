package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var n int
	fmt.Scan(&n)

	as, bs, cs := make([]int, n), make([]int, n), make([]int, n)
	scanner := wordScanner()
	for i := range as {
		as[i] = getInt(scanner)
	}
	for i := range bs {
		bs[i] = getInt(scanner)
	}
	for i := range cs {
		cs[i] = getInt(scanner)
	}

	sort.Sort(sort.Reverse(sort.IntSlice(as)))
	sort.Sort(sort.Reverse(sort.IntSlice(bs)))
	sort.Sort(sort.Reverse(sort.IntSlice(cs)))

	j := 0
	bc := make([]int, n)
	for i := 0; i < n; i++ {
		if i != 0 {
			bc[i] += bc[i-1] + j
		}
		for ; j < n; j++ {
			if bs[i] >= cs[j] {
				break
			}
			bc[i]++
		}
	}

	ans := 0
	j = 0
	for i := 0; i < n; i++ {
		for ; j < n; j++ {
			if as[i] >= bs[j] {
				break
			}
		}
		if j != 0 {
			ans += bc[j-1]
		}
	}

	fmt.Println(ans)
}

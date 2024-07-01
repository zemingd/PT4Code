package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var buf = bufio.NewScanner(os.Stdin)

func scanInt() int {
	buf.Scan()
	i, _ := strconv.Atoi(buf.Text())
	return i
}

func scanInts(n int) []int {
	a := make([]int, n)
	for k, _ := range a {
		a[k] = scanInt()
	}
	return a
}

func scanString() string {
	buf.Scan()
	return buf.Text()
}

func scanStrings(n int) []string {
	a := make([]string, n)
	for k, _ := range a {
		a[k] = scanString()
	}
	return a
}

func main() {
	buf.Split(bufio.ScanWords)

	n := scanInt()
	k := scanInt()
	a := scanInts(n)

	result := []int{}
	for i := 0; i < len(a)-1; i++ {
		for j := i + 1; j < len(a); j++ {
			result = append(result, a[i]*a[j])
		}
	}

	sort.Ints(result)
	fmt.Printf("%d", result[k-1])
}

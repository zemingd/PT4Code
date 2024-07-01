package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var (
		n, k int
	)

	sc.Split(bufio.ScanWords)
	n = nextInt()
	k = nextInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	var pair []int

	for i := 0; i < n-1; i++ {
		for j := i+1; j < n; j++ {
			pair = append(pair, a[i]*a[j])
		}
	}
	sort.Ints(pair)
	fmt.Println(pair[k-1])
}

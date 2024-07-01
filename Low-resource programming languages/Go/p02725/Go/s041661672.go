package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	k, n := scanInt(), scanInt()
	a := make([]int, n)
	a[0] = scanInt()
	mx, mn := a[0], a[0]
	for i := 1; i < n; i++ {
		x := scanInt()
		ax := x - k
		if x-mx <= mn-ax {
			a[i] = x
			mx = x
		} else {
			a[i] = ax
			mn = ax
		}
	}
	sort.Ints(a)
	fmt.Println(a[n-1] - a[0])
}

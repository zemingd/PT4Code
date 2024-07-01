package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readIntLine(n int) []int {
	list := make([]int, n)
	for i := 0; i < n; i++ {
		list[i] = readInt()
	}
	return list
}

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	a := readIntLine(n)
	b := readIntLine(n)
	c := readIntLine(n)
	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)

	fmt.Println(a, b, c)

	ans := 0
	for i := 0; i < n; i++ {
		la, _ := binarySearch(-1, n, b[i], a)
		_, rc := binarySearch(-1, n, b[i], c)
		ans += (la + 1) * (n - rc)
	}
	fmt.Println(ans)
}

func binarySearch(l, r, key int, list []int) (int, int) {
	n := len(list)
	for i := 0; i < n; i++ {
		for r-l > 1 {
			m := (l + r) / 2
			if key <= list[m] {
				r = m
			} else {
				l = m
			}
		}
	}
	return l, r
}

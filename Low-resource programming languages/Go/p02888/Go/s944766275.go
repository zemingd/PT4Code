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

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
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

func main() {
	sc.Split(bufio.ScanWords)

	n := readInt()
	l := make([]int, n)
	for i := 0; i < n; i++ {
		l[i] = readInt()
	}

	sort.Sort(sort.IntSlice(l))

	ans := 0
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			right := n
			left := j
			for right-left > 1 {
				middle := (right + left) / 2
				a, b, c := l[i], l[j], l[middle]
				if check(a, b, c) && check(b, c, a) && check(c, a, b) {
					left = middle
				} else {
					right = middle
				}
			}
			if left != j {
				ans += left - j
			}
		}
	}
	fmt.Println(ans)
}

func check(a, b, c int) bool {
	return a < b+c
}

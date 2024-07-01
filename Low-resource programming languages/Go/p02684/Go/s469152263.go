package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

var sc = newScanner()

func main() {
	n, k := scanInt(), scanInt()
	a := scanInts(n)
	for i := 0; i < n; i++ {
		a[i]--
	}

	visited := make([]bool, n)
	var cur int
	var s int
	for {
		if visited[cur] {
			s = cur
			break
		}
		visited[cur] = true
		cur = a[cur]
	}

	var cnt int
	for i := s; ; {
		cnt++
		i = a[i]
		if i == s {
			break
		}
	}

	var x int
	for i := 0; i != s; {
		x++
		i = a[i]
	}

	var ans int
	if k <= x {
		for ans != s {
			ans = a[ans] - 1
		}
	} else {
		k -= x
		k %= cnt
		ans = s
		for i := 0; i < k; i++ {
			ans = a[ans]
		}
	}
	fmt.Println(ans + 1)
}

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
	n, m := scanInt(), scanInt()
	h := scanInts(n)
	t := make([]bool, n)
	for i := 0; i < n; i++ {
		t[i] = true
	}

	for i := 0; i < m; i++ {
		a, b := scanInt(), scanInt()
		a--
		b--
		if h[a] < h[b] {
			t[a] = false
		}else if h[a] > h[b] {
			t[b] = false
		} else {
			t[a], t[b] = false,false
		}
	}
	var ans int
	for i := 0; i < n; i++ {
		if t[i] {
			ans++
		}
	}

	fmt.Println(ans)
}
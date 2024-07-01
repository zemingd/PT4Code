package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

var l [][]int

func main() {
	scanner.Split(bufio.ScanWords)

	n, m := nextInt(), nextInt()
	h := make([]int, n)
	for i := range h {
		h[i] = nextInt()
	}
	a := make([]int, m)
	b := make([]int, m)
	l := make([][]int, n)
	for i := 0; i < m; i++ {
		a[i], b[i] = nextInt()-1, nextInt()-1
		l[a[i]] = append(l[a[i]], b[i])
		l[b[i]] = append(l[b[i]], a[i])
	}

	ans := 0
	for i := 0; i < n; i++ {
		flag := false
		for _, v := range l[i] {
			if h[i] > v {
				flag = true
			} else {
				flag = false
				continue
			}
		}
		if flag {
			ans++
		}
	}
	fmt.Println(ans)
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}

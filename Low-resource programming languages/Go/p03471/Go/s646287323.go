package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := nextInt()
	y := nextInt()

	for i := 0; i <= n; i++ {
		for j := 0; i+j <= n; j++ {
			for k := 0; i+j+k <= n; k++ {
				if n != i+j+k {
					continue
				}
				if y == i*1000+j*5000+k*10000 {
					printf("%d %d %d\n", k, j, i)
					return
				}
			}
		}
	}
	println("-1 -1 -1")
	return
}

func main() {
	defer out.Flush()
	in.Split(bufio.ScanWords)

	solve()
}

// --- template ---

var (
	in  = bufio.NewScanner(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

func println(a ...interface{}) {
	fmt.Fprintln(out, a...)
}

func printf(format string, a ...interface{}) {
	fmt.Fprintf(out, format, a...)
}

func next() string {
	in.Scan()
	return in.Text()
}

func nextInt() int {
	s := next()
	i, e := strconv.Atoi(s)
	if e != nil {
		fmt.Println(e)
	}
	return i
}

func nextInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = nextInt()
	}
	return res
}

func unique(list []int) []int {
	m := make(map[int]bool)
	uniq := make([]int, 0)
	for _, e := range list {
		if !m[e] {
			m[e] = true
			uniq = append(uniq, e)
		}
	}
	return uniq
}

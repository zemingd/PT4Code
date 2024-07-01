package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	a := nextInt()
	b := nextInt()
	c := nextInt()
	x := nextInt()

	ans := 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				// fmt.Fprintf(out, "a: %d, b: %d, c:%d\n", 500*i, 100*j, 50*k)
				// fmt.Fprintf(out, "sum:%d\n", 500*i+100*j+50*k)
				if x == 500*i+100*j+50*k {
					// fmt.Fprintln(out, "increment!!!")
					ans++
				}
			}
		}
	}

	fmt.Fprintln(out, ans)
	return

}

func main() {
	in.Split(bufio.ScanWords)

	defer out.Flush()
	solve()
}

// --- template ---

var (
	in  = bufio.NewScanner(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

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

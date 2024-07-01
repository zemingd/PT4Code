package main

import (
	"fmt"
	"io"
	"os"
	"sort"
)

func main() {
	solve(os.Stdin, os.Stdout)
}

func sum(a []int) int {
	s := 0
	for _, e := range a {
		s += e
	}
	return s
}

func solve(in io.Reader, out io.Writer) {
	var n, k int
	fmt.Fscanf(in, "%d%d", &n, &k)

	v := make([]int, n)
	for i := range v {
		fmt.Fscanf(in, "%d", &v[i])
	}

	la := make([]int, n+1)
	ra := make([]int, n+1)
	la[0] = 0
	ra[0] = 0
	for i := range v {
		la[i+1] = la[i] + v[i]
		ra[i+1] = ra[i] + v[n-i-1]
	}

	ans := 0

	g := make([]int, 0)
	for i := 0; i < k; i++ {
		for j := 0; j < k-i+1; j++ {
			for ii := 0; ii < j; ii++ {
				g = append(g, v[ii])
			}
			for jj := n - 1; jj > n-k+i+j-1; jj-- {
				g = append(g, v[jj])
			}
			sort.Ints(g)
			for iii := 0; iii < i; iii++ {
				if iii > len(g)-1 {
					break
				}
				if g[iii] < 0 {
					g[iii] = 0
				}
			}
			a := sum(g)
			if a > ans {
				ans = a
			}
			g = make([]int, 0)
		}
	}
	fmt.Fprintln(out, ans)
}

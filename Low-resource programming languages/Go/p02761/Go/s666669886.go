//problem_c.go

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	//"strings"
)

const (
	mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

// -----------------------------------------

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getIntSlice(n int) []int {
	ns := []int{}
	for i := 0; i < n; i++ {
		ns = append(ns, getInt())
	}
	return ns
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func getStringSlice(n int) []string {
	ss := []string{}
	for i := 0; i < n; i++ {
		ss = append(ss, getString())
	}
	return ss
}

func sortIntSlice(ns []int) []int {
	sort.Sort(sort.IntSlice(ns))
	return ns
}

func rsortIntSlice(ns []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(ns)))
	return ns
}

// -----------------------------------------

func solve() {
	n, m := getInt(), getInt()
	var sc [][]int

	for i := 0; i < m; i++ {
		sc = append(sc, getIntSlice(2))
	}

	e := false
	var gn [3]int

	if m > 1 {
		for i := 0; i < m; i++ {
			for j := i + 1; j < m; j++ {
				if sc[i][0] == sc[j][0] && sc[i][1] != sc[j][1] {
					e = true
				}
			}
		}
	}

	if n > 2 {
		for i := 0; i < m; i++ {
			if sc[i][0] < n && sc[i][1] == 0 {
				e = true
			}
		}
	}

	for i := 0; i < m; i++ {
		if sc[i][0] == 1 {
			gn[0] = sc[i][1]
		} else if sc[i][0] == 2 {
			gn[1] = sc[i][1]
		} else if sc[i][0] == 3 {
			gn[2] = sc[i][1]
		}
	}

	if e {
		fmt.Fprintln(wr, -1)
	} else {
		if n == 1 {
			fmt.Fprintln(wr, gn[0])
		} else if n == 2 {
			fmt.Fprintln(wr, gn[0]*10+gn[1])
		} else if n == 3 {
			fmt.Fprintln(wr, gn[0]*100+gn[1]*10+gn[2])
		}
	}

}

// -----------------------------------------

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

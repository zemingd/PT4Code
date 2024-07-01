package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

//=====I/O=====

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanInt64() int64 {
	sc.Scan()
	a,_ := strconv.ParseInt(sc.Text(),10,64)
	return a
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ { res[i] = scanInt() }
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func printInts(a ...int) {
	for i, e := range a {
		fmt.Fprint(wr, e)
		if i != len(a)-1 { fmt.Fprint(wr, " ") }
	}
	fmt.Fprintln(wr)
	wr.Flush()
}

//=====main=====

func main() {
	sc.Split(bufio.ScanWords)

	h,w := scanInt(), scanInt()
	a := make([][]int, h)

	for i := 0; i < h; i++ {
		a[i] = scanInts(w)
	}

	ans := make([]act, 0)

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if a[i][j]%2 == 1 {
				if i == h-1 {
					if j == w-1 {
						continue
					}
					a[i][j+1]++
					ans = append(ans, act{i+1,j+1,i+1,j+2})
					continue
				}
				a[i+1][j]++
				ans = append(ans, act{i+1,j+1,i+2,j+1})
			}
		}
	}

	fmt.Println(len(ans))

	for i := 0; i < len(ans); i++ {
		fmt.Fprintln(wr, ans[i].y,ans[i].x,ans[i].nexty,ans[i].nextx)
	}
	wr.Flush()
}

type act struct {
	y int
	x int
	nexty int
	nextx int
}

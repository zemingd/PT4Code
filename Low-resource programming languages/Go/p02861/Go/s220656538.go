package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"math"
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

	n := scanInt()
	x := make([]int, n)
	y := make([]int, n)

	for i := 0; i < n; i++ {
		x[i], y[i] = scanInt(), scanInt()
	}

	ans := float64(0)

	c := 1

	for i := 0; i < n; i++ {
		c *= n-i
	}

	b := make([]int, n)
	for j := 0; j < n; j++ {
		b[j] = j
	}

	for i := 0; i < c; i++ {
		now := i
		a := make([]int, n)
		do := make([]int, n)
		done := make([]bool, n)

		for j := 0; j < n; j++ {
			do[n-1-j] = now%(j+1)
			now /= (j+1)
		}

		for j := 0; j < n; j++ {
			count := 0
			for k := 0; k < n; k++ {
				if done[k] {
					continue
				}
				if count == do[j] {
					a[j] = b[k]
					done[k] = true
					break
				} else {
					count++
				}
			}
		}

		// fmt.Println(a)

		for j := 0; j < n-1; j++ {
			ans += math.Sqrt(float64(dist(x[a[j]],y[a[j]],x[a[j+1]],y[a[j+1]])))
		}

	}

	fmt.Println(ans/float64(c))
}

func dist(x1,y1,x2,y2 int) int {
	return (x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)
}

package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	k := nextInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for kk := 0; kk < k; kk++ {
		b := make([]int, n)
		for i := 0; i < n; i++ {
			//			fmt.Println(i, ": ", float64(i-a[i])-0.5, "~", float64(i+a[i])+0.5, "(= ", mymax(int(math.Ceil(float64(i-a[i])-0.5)), 0), "~", mymin(int(math.Floor(float64(i+a[i])+0.5)), n-1), ")")
			for light := mymax(int(math.Ceil(float64(i-a[i])-0.5)), 0); light <= mymin(int(math.Floor(float64(i+a[i])+0.5)), n-1); light++ {
				b[light]++
			}
		}
		for i := 0; i < n; i++ {
			a[i] = b[i]
		}
		//		myprintln(a)
	}

	myprintln(a)
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextInt64() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}

func mymax(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}

func mymin(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func myprintln(a []int) {
	var p string
	for i := 0; i < len(a); i++ {
		p += fmt.Sprintf("%d", a[i])
		if i != len(a)-1 {
			p += " "
		}
	}
	fmt.Println(p)
}

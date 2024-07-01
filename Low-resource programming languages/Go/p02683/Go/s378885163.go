package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

//func nextString() string {
//	sc.Scan()
//	return sc.Text()
//}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

const INF = 10000000000
var min int = INF
var n int
var m int
var x int
var c []int
var a [][]int

func search(toBuy []bool, depth int) {
	if depth == n {
		skills := make([]int, m, m)
		cost := 0

		for i := 0; i < n; i++ {
			if toBuy[i] {
				cost += c[i]
				for j := 0; j < m; j++ {
					skills[j] += a[i][j]
				}
			}
		}

		for i := range skills {
			if skills[i] < x {
				return
			}
		}

		if cost < min {
			min = cost
		}
		return
	}

	toBuy[depth] = true
	search(toBuy, depth + 1)
	toBuy[depth] = false
	search(toBuy, depth + 1)
}

func main() {
	n = nextInt()
	m = nextInt()
	x = nextInt()
	c = make([]int, n, n)
	a = make([][]int, n, n)

	for i := 0; i < n; i++ {
		a[i] =  make([]int, m, m)
		for j := 0; j <= m; j++ {
			if j == 0 {
				c[i] = nextInt()
			} else {
				a[i][j-1] = nextInt()
			}
		}
	}

	toBuy := make([]bool, n)
	for i := range toBuy {
		toBuy[i] = true
	}

	search(toBuy, 0)

	if min == INF {
		fmt.Println(-1)
		return
	}
	fmt.Println(min)
}

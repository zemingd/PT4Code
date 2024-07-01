package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

const INF = int(1e9)

func main() {
	sc.Split(bufio.ScanWords)
	n, m, x := readInt(), readInt(), readInt()

	c := make([]int, n)
	a := make([][]int, n)
	for i := 0; i < n; i++ {
		c[i] = readInt()
		a[i] = make([]int, m)
		for j := 0; j < m; j++ {
			a[i][j] = readInt()
		}
	}

	ans := int(1e9)
	for i := 0; i < 1<<n; i++ {
		cost := 0
		d := make([]int, m)
		for j := 0; j < n; j++ {
			if i>>j&1 == 1 {
				cost += c[j]
				for k := 0; k < m; k++ {
					d[k] += a[j][k]
				}
			}
		}
		ok := true
		for _, v := range d {
			if v < x {
				ok = false
			}
		}
		if ok {
			ans = min(ans, cost)
		}
	}
	if ans == INF {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
}

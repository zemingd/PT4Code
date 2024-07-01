package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	N, H := getInt(), getInt()
	a := make([]int, N)
	b := make([]int, N)
	for i := 0; i < N; i++ {
		a[i], b[i] = getInt(), getInt()
	}
	sort.Ints(a)
	sort.Ints(b)
	maxA := a[len(a)-1]
	ans := 0
	pos := len(b) - 1
	for b[pos] > maxA {
		H -= b[pos]
		ans++
		pos--
		if pos < 0 {
			break
		}
	}

	if H > 0 {
		n := (H + maxA/2) / maxA
		ans += n
	}

	out(ans)
}

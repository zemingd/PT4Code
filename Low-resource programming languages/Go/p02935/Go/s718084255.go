package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

var ans float64

func calc(idx, n int, val float64, v []int) {
	if idx == n-2 {
		ans = (val + float64(v[idx+1])) / 2
		return
	}
	calc(idx+1, n, ((val + float64(v[idx+1])) / 2), v)
}

func main() {
	sc.Split(bufio.ScanWords)
	n := getInt()
	v := make([]int, n)

	for i := range v {
		v[i] = getInt()
	}
	sort.Ints(v)

	if n == 2 {
		fmt.Println(float64(v[0]+v[1]) / 2)
		return
	}
	calc(1, n, float64(v[0]+v[1])/2, v)
	fmt.Println(ans)
}

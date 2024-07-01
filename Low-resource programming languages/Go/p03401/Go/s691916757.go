package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]int, n+2)
	for i := 1; i < n+1; i++ {
		a[i] = nextInt()
	}

	sum := make([]int, n+2)
	for i := 0; i < n+1; i++ {
		sum[i+1] += abs(a[i]-a[i+1]) + sum[i]
	}

	for i := 1; i < n+1; i++ {
		ans := sum[n+1] - (sum[i+1] - sum[i-1]) + abs(a[i+1]-a[i-1])
		fmt.Println(ans)
	}
	// fmt.Println(a)
	// fmt.Println(sum)
}

func abs(a int) int {
	if a < 0 {
		return -1 * a
	}
	return a
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	n := getInt()
	as := make([]int, n+2)
	ds := make([]int, n+1)
	ds2 := make([]int, n)
	sum := 0
	for i := range as {
		if (i == 0) || (i == n+1) {
			as[i] = 0
		} else {
			as[i] = getInt()
		}

		if i != 0 {
			ds[i-1] = abs(as[i] - as[i-1])
			sum += ds[i-1]
		}

		if i > 1 {
			ds2[i-2] = abs(as[i] - as[i-2])
		}
	}

	ans := make([]string, n)
	for i := range ans {
		ans[i] = strconv.Itoa(sum - (ds[i] + ds[i+1]) + ds2[i])
	}

	fmt.Println(strings.Join(ans, "\n"))
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}

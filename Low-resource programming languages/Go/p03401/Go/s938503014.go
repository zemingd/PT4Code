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
	as[0], as[n+1] = 0, 0
	sum := 0
	for i := 1; i <= n; i++ {
		as[i] = getInt()
		sum += abs(as[i] - as[i-1])
	}
	sum += abs(as[n+1] - as[n])

	ans := make([]string, n)
	for i := range ans {
		ans[i] = strconv.Itoa(sum - abs(as[i+1]-as[i]) - abs(as[i+2]-as[i+1]) + abs(as[i+2]-as[i]))
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

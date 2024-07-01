package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

func main() {

	var wtr = bufio.NewWriter(os.Stdout)
	var sc = bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)

	//var N int
	sc.Scan()
	temp := strings.Split(sc.Text(), " ")
	_, _ = strconv.Atoi(temp[0])

	//A := make([]int, N)

	sc.Scan()
	min := math.MaxInt64
	sum := 0
	for _, s := range strings.Split(sc.Text(), " ") {
		s, _ := strconv.Atoi(s)
		sum += s
		if min > s {
			min = s
		}
	}
	sum -= min

	fmt.Fprintln(wtr, sum)
	_ = wtr.Flush()
}

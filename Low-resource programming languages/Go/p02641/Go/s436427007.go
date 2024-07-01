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

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func abs(x int) int {
	if x > 0 {
		return x
	} else {
		return -x
	}
}

func main() {
	x := nextInt()
	n := nextInt()

	var nonP [100]int
	for i := 0; i < n; i++ {
		nonP[nextInt() - 1] = -1
	}

	const INF = 10000000000
	minDiff := INF
	minIdx := 0

	for i, val := range nonP {
		if val == -1 {
			continue
		}

		diff := abs(x - (i + 1))

		if diff < minDiff {
			minDiff = diff
			minIdx = i
		}
	}

	if x <= minDiff  {
		fmt.Println(0)
	} else {
		fmt.Println(minIdx + 1)
	}
}
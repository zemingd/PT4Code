package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const MaxInt = int(^uint(0) >> 1)
const MinInt = -MaxInt - 1

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	k := nextInt()
	x := nextInt()

	for i := x - k + 1; i < x+k; i++ {
		fmt.Printf("%d ", i)
	}
}

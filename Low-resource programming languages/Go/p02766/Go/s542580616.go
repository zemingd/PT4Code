package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func digit(n, k int) int {
	var dig float64 = math.Log10(float64(n)) / math.Log10(float64(k))
	return int(dig + 1.0)
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()

	fmt.Println(digit(n, k))
}
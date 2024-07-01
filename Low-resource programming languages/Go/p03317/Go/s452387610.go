package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)
	N, K := scanInt(), scanInt()

	fmt.Println((N-1)/(K-1) + intMin((N-1)%(K-1), 1))
}

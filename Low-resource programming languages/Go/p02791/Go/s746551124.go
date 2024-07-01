package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	var n, count, prev, p int

	sc.Split(bufio.ScanWords)
	n = next()

	count, prev = 0, math.MaxInt64
	for i := 0; i < n; i++ {
		p = next()
		if p < prev {
			prev = p
			count++
		}
	}

	fmt.Println(count)
}

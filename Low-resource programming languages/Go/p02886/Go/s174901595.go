package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	d := make([]int, n)
	for i := 0; i< n; i++ {
		d[i] = nextInt()
	}

	total := 0
	for i := 0; i< n - 1; i++ {
		for j := i + 1; j< n; j++ {
			total += d[i] * d[j]
		}
	}
	fmt.Printf("%d", total)
}

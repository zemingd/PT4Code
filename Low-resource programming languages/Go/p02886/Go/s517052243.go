package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
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

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	d := make([]int, n)
	for i := 0; i < n; i++ {
		d[i] = nextInt()
	}

	sum := 0
	for l := 0; l < n-1; l++ {
		for r := l+1; r < n; r++ {
			sum += d[l] * d[r]
		}
	}


	fmt.Println(sum)
}
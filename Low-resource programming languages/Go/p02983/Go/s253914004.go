package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func searchMin(l int, r int) int {
	min := 2019
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			mod := (i * j) % 2019
			if mod < min {
				min = mod
			}
			if min == 0 {
				return 0
			}
		}
	}
	return min
}

func main() {
	sc.Split(bufio.ScanWords)
	l := nextInt()
	r := nextInt()

	// min := searchMin(l, r)
	// fmt.Println(min)

	if r > l+2019 {
		r = l + 2019
	}
	min := 2019
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			mod := (i * j) % 2019
			if mod < min {
				min = mod
			}
		}
	}
	fmt.Println(min)
}

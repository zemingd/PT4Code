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
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func isTarget(i, j, dx int) int {
	if dx == i+j {
		return 1
	}
	return 0
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	l := make([]int, n)
	r := map[int]int{}
	for i := 0; i < n; i++ {
		a := nextInt()
		l[i] = i + a
		if i > a {
			r[i-a]++
		}
	}

	count := 0
	for i := 0; i < n; i++ {
		v, ok := r[l[i]]
		if ok {
			count += v
		}
	}

	fmt.Println(count)
}

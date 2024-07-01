package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func run(k, n int, a []int) int {
	dist := a[0]
	prev := dist
	max := prev
	if dist == 0 {
		dist += a[1]
	}
	for i := 1; i < n; i++ {
		diff := a[i] - prev
		prev = a[i]
		if diff > max {
			max = diff
		}
		dist += diff
	}
	return k - (dist - max)
}

func main() {
	s := nextLine()
	i1 := convInts(s, 2)
	i2 := convInts(nextLine(), i1[1])
	fmt.Printf("%d", run(i1[0], i1[1], i2))
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func convInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

func convInts(s string, l int) []int {
	r := make([]int, l)
	ss := strings.Split(s, " ")
	for i := 0; i < l; i++ {
		r[i] = convInt(ss[i])
	}
	return r
}
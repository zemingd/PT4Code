package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	a := readInt()
	b := readInt()
	c := readInt()
	l := []int{a, b, c}
	var i int
	var m int
	i, m = max(l)
	l = append(l[:i], l[i+1:]...)
	fmt.Println((m * 10) + l[0] + l[1])
}

func max(ns []int) (index, max int) {
	max = math.MinInt64
	for i, n := range ns {
		if n > max {
			index = i
			max = n
		}
	}
	return
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}

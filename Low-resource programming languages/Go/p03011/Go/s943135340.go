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
	fmt.Println(minList([]int{a + b, b + c, c + a}))
}

func minList(l []int) int {
	var min = math.MaxInt64
	for _, n := range l {
		if min > n {
			min = n
		}
	}
	return min
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

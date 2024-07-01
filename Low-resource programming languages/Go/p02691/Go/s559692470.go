package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func readInt() int {
	s.Scan()
	num, _ := strconv.Atoi(s.Text())
	return num
}

func readInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = readInt()
	}
	return sl
}

func init() {
	s.Split(bufio.ScanWords)
}

func main() {
	n := readInt()
	a := readInts(n)
	b := map[int]int{}

	var ans int
	for i, a := range a {
		if _, ok := b[i-a]; ok {
			ans += b[i-a]
		}
		if _, ok := b[i+a]; !ok {
			b[i+a] = 0
		}
		b[i+a]++
	}

	fmt.Println(ans)
}

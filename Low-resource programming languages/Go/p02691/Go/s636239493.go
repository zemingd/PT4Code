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
	var ans int
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if a[i]+a[j] == j-i {
				ans++
			}
		}
	}

	fmt.Println(ans)
}

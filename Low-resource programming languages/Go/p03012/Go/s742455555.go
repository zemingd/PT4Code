package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	// "sort"
)

var stdin = initStdin()
 
func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func scanInt() int {
	stdin.Scan()
	i, _ := strconv.Atoi(stdin.Text())
	return i
}

func scanStr() string {
	stdin.Scan()
	return stdin.Text()
}

type ia []int

func (ia ia)Len() int {
	return len(ia)
}
func (ia ia)Swap(i, j int) {
	ia[i], ia[j] = ia[j], ia[i]
}
func (ia ia)Less(i, j int) bool {
	return ia[i] < ia[j]
}

func main() {
	n := scanInt()
	var sa ia
	s := 0
	for i := 0; i < n; i++ {
		in := scanInt()
		s += in
		sa = append(sa, s)
	}
	minDiff := s
	for i := 0; i < n; i++ {
		diff := s - 2 * sa[i]
		if diff < 0 {
			diff *= -1
		}
		if minDiff > diff {
			minDiff = diff
		}
	}
	fmt.Println(minDiff)
}
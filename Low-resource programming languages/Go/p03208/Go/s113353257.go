package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	in := inputSlice()
	n := parseInt(in[0])
	k := parseInt(in[1])
	slice := inputSlicelnInt(n)
	sort.Sort(sort.IntSlice(slice))
	min := 1000000000
	last := n - k + 1
	var sml, lrg, diff int
	for i := 0; i < last; i++ {
		sml = slice[i]
		lrg = slice[i+k-1]
		diff = lrg - sml
		if diff < min {
			min = diff
		}
	}
	fmt.Print(min)
	// fmt.Printf("type: %T, value: %v\n", n, n)
	// fmt.Printf("type: %T, value: %v\n", m, m)
	// fmt.Println(m)
}

func input() string {
	sc.Scan()
	return strings.TrimSpace(sc.Text())
}

func inputSlice() []string {
	sc.Scan()
	return strings.Split(strings.TrimSpace(sc.Text()), " ")
}

func inputSlicelnStr(n int) []string {
	slice := make([]string, 0, n)
	for i := 0; i < n; i++ {
		in := input()
		slice = append(slice, in)
	}
	return slice
}
func inputSlicelnInt(n int) []int {
	slice := make([]int, 0, n)
	for i := 0; i < n; i++ {
		in := input()
		slice = append(slice, parseInt(in))
	}
	return slice
}

func parseInt(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

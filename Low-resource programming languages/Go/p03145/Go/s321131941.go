package main

import (
	"bufio"
	"fmt"
	"strings"

	"os"
	"sort"
	"strconv"
)

//scanで一行づつ読み込む
var sc = bufio.NewScanner(os.Stdin)
var wtr = bufio.NewWriter(os.Stdout)

//sort
// array := []int{5, 1, 4, 2, 3}
// sort.Sort(sort.IntSlice(array))

func main() {
	// a := make([]int, n)
	n := nextLine()
	n2 := strings.Split(n, " ")
	arr := []int{}
	for _, i := range n2 {
		j, _ := strconv.Atoi(i)
		arr = append(arr, j)
	}
	sort.Sort(sort.IntSlice(arr))
	a, b := arr[0], arr[1]

	fmt.Fprintln(wtr, (a*b)/2)
	_ = wtr.Flush()
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

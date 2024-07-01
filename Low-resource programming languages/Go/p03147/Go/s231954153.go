package main

import (
	"bufio"
	"fmt"
	"strings"

	"os"
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
	n0 := nextLine()
	n, _ := strconv.Atoi(n0)
	n2 := strings.Split(nextLine(), " ")
	arr := []int{}
	for _, i := range n2 {
		j, _ := strconv.Atoi(i)
		arr = append(arr, j)
	}
	slice := arr[:]
	// sort.Sort(sort.IntSlice(arr))
	// a, b := arr[0], arr[1]
	var ans int = 0
	count := make([]int, n)
	count[0] = 0
	t := true

	for t {
		sel := true
		t = false
		for i, v := range slice {

			if v == 0 {
				sel = true
				continue

			}
			if sel && v > 0 {
				ans++
				sel = false
				slice[i]--
				t = true

			} else if !sel && v > 0 {
				slice[i]--
			}
		}

	}

	fmt.Fprintln(wtr, ans)
	_ = wtr.Flush()
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

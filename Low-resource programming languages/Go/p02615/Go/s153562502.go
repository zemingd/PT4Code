package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	scan_init()
	n := scanInt()
	a := make([]int, n)
	for i:= 0; i<n; i++ {
		a[i] = scanInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	// fmt.Println(a)
	sum := a[0]
	for i:= 2; i <n; i++ {
		sum += a[i/2]
	}
	fmt.Println(sum)
}

var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}

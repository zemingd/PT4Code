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
	sort.Ints(a)
	n = n-1
	sum := a[n]
	for i:= n-1; i >= 0; i-- {
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

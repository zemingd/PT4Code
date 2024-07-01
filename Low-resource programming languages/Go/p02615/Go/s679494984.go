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
	sum := 0
	for i:= 0; i<n-1; i++ {
		// fmt.Println(i/2)
		sum += a[n-(i/2)]
	}
	fmt.Println(sum+1)
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

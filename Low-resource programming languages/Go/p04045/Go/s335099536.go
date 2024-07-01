package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func getFloat() float64 {
	sc.Scan()
	n, _ := strconv.ParseFloat(sc.Text(), 64)
	return n
}

func min(a, b, c int) (n int) {
	ns := []int{a, b, c}
	sort.Ints(ns)
	return ns[0]
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

func parseFloat(s string) (n float64) {
	n, _ = strconv.ParseFloat(s, 64)
	return
}

func parseInt(s string) (n int) {
	n, _ = strconv.Atoi(s)
	return
}

var count int

func dfs(n int) {

}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := getInt(), getInt()

	d := make([]int, k)
	for i := range d {
		d[i] = getInt()
	}

	for i := n; n < 10000; i++ {
		count := true
		for _, v := range d {
			if strings.Contains(strconv.Itoa(i), strconv.Itoa(v)) {
				count = false
				break
			}
		}
		if count {
			fmt.Println(i)
			break
		}
	}
}

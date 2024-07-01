package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var N, r int
	fmt.Scan(&N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, N)
	b := make([]int, N)
	c := make([]int, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	for i := 0; i < N; i++ {
		sc.Scan()
		b[i], _ = strconv.Atoi(sc.Text())
	}
	for i := 0; i < N; i++ {
		sc.Scan()
		c[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Sort(sort.IntSlice(a))
	sort.Sort(sort.Reverse(sort.IntSlice(c)))
	for i := 0; i < N; i++ {
		ac := 0
		cc := 0
		for j := 0; j < N; j++ {
			if a[j] < b[i] {
				ac++
			} else {
				break
			}
		}
		for j := 0; j < N; j++ {
			if b[i] < c[j] {
				cc++
			} else {
				break
			}
		}
		r += ac * cc
	}
	fmt.Println(r)

}
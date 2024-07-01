package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)

	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	split := strings.Split(s.Text(), " ")

	d := make([]int, k)
	for i, s := range split {
		d[i], _ = strconv.Atoi(s)
	}

	base := []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
	fav := make([]int, 0, 9-k)
	for _, b := range base {
		var exists bool
		for _, v := range d {
			if b == v {
				exists = true
			}
		}
		if !exists {
			fav = append(fav, b)
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(fav)))

	var ns []int
	ns = digit(n, ns)
	r := make([]int, 0, len(ns))
l:
	for _, n := range ns {
		for _, f := range fav {
			if n <= f {
				r = append(r, f)
				continue l
			}
		}
	}

	for i := len(r) - 1; 0 <= i; i-- {
		fmt.Printf("%d", r[i])
	}
}

func digit(i int, list []int) []int {
	if i > 0 {
		return digit(i/10, append(list, i%10))
	}
	return list
}
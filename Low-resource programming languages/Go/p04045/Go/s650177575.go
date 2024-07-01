package main

import (
	"bufio"
	"fmt"
	"os"
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

	base := []int{0, 1, 2, 3, 4, 5, 6, 78, 8, 9}
	fav := make([]int, 0, len(base)-k)
l1:
	for _, b := range base {
		for _, v := range d {
			if b == v {
				continue l1
			}
		}
		fav = append(fav, b)
	}

l2:
	for i := n; i < 10000; i++ {
		var ns []int
		ns = digit(i, ns)

		for j := 0; j < len(ns); j++ {
			if ns[j] == 0 {
				continue
			}

			var valid bool
			for _, v := range fav {
				if ns[j] == v {
					valid = true
				}
			}
			if !valid {
				continue l2
			}
		}

		fmt.Printf("%d", i)
		break
	}
}

func digit(i int, list []int) []int {
	if i > 0 {
		return digit(i/10, append(list, i%10))
	}
	return list
}
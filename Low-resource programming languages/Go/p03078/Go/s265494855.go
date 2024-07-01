package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var s = bufio.NewScanner(os.Stdin)

func main() {
	s.Scan()
	in := strings.Split(s.Text(), " ")
	x, _ := strconv.Atoi(in[0])
	y, _ := strconv.Atoi(in[1])
	z, _ := strconv.Atoi(in[2])
	k, _ := strconv.Atoi(in[3])
	a := make([]int, x)
	s.Scan()
	in = strings.Split(s.Text(), " ")
	for i, _ := range a {
		a[i], _ = strconv.Atoi(in[i])
	}
	b := make([]int, y)
	s.Scan()
	in = strings.Split(s.Text(), " ")
	for i, _ := range b {
		b[i], _ = strconv.Atoi(in[i])
	}
	c := make([]int, z)
	s.Scan()
	in = strings.Split(s.Text(), " ")
	for i, _ := range c {
		c[i], _ = strconv.Atoi(in[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	sort.Sort(sort.Reverse(sort.IntSlice(c)))
	capacity := 0
	if x*y*z < 3000 {
		capacity = x * y * z
	} else {
		capacity = 3000
	}
	ans := make([]int, 0, capacity)
	if len(a) > 100 {
		a = a[:100]
	}
	if len(b) > 100 {
		b = b[:100]
	}
	if len(c) > 100 {
		c = c[:100]
	}
	for i, _ := range a {
		for j, _ := range b {
			for l, _ := range c {
				ans = append(ans, a[i]+b[j]+c[l])
			}
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ans)))
	for i := 0; i < k; i++ {
		fmt.Println(ans[i])
	}
}

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
	ans := make([]int, 0, x*y*z)
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

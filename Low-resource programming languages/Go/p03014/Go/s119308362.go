package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	h, w int
	s    []string
)

func calcLeft(c chan [][]int) {
	ls := make([][]int, h)
	for i := range ls {
		ls[i] = make([]int, w)
		for j := 0; j < w; j++ {
			if s[i][j] == '#' {
				ls[i][j] = 0
				continue
			}
			if j == 0 {
				ls[i][j] = 1
				continue
			}
			ls[i][j] = ls[i][j-1] + 1
		}
	}
	c <- ls
}

func calcRight(c chan [][]int) {
	rs := make([][]int, h)
	for i := range rs {
		rs[i] = make([]int, w)
		for j := w - 1; j >= 0; j-- {
			if s[i][j] == '#' {
				rs[i][j] = 0
				continue
			}
			if j == w-1 {
				rs[i][j] = 1
				continue
			}
			rs[i][j] = rs[i][j+1] + 1
		}
	}
	c <- rs
}

func calcTop(c chan [][]int) {
	ts := make([][]int, h)
	for i := range ts {
		ts[i] = make([]int, w)
	}
	for j := 0; j < w; j++ {
		for i := 0; i < h; i++ {
			if s[i][j] == '#' {
				ts[i][j] = 0
				continue
			}
			if i == 0 {
				ts[i][j] = 1
				continue
			}
			ts[i][j] = ts[i-1][j] + 1
		}
	}
	c <- ts
}

func calcDown(c chan [][]int) {
	ds := make([][]int, h)
	for i := range ds {
		ds[i] = make([]int, w)
	}
	for j := 0; j < w; j++ {
		for i := h - 1; i >= 0; i-- {
			if s[i][j] == '#' {
				ds[i][j] = 0
				continue
			}
			if i == h-1 {
				ds[i][j] = 1
				continue
			}
			ds[i][j] = ds[i+1][j] + 1
		}
	}
	c <- ds
}

func main() {
	fmt.Scan(&h, &w)

	sc := bufio.NewScanner(os.Stdin)
	s = make([]string, h)
	for i := range s {
		sc.Scan()
		s[i] = sc.Text()
	}

	c := make(chan [][]int)
	go calcLeft(c)
	go calcRight(c)
	go calcTop(c)
	go calcDown(c)
	xs1, xs2, xs3, xs4 := <-c, <-c, <-c, <-c

	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if v := xs1[i][j] + xs2[i][j] + xs3[i][j] + xs4[i][j] - 3; v > ans {
				ans = v
			}
		}
	}
	fmt.Println(ans)
}

package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	h, w int
	s    []string
	ch   = make(chan [][]int)
)

func calcLeft() {
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
	ch <- ls
}

func calcRight() {
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
	ch <- rs
}

func calcTop() {
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
	ch <- ts
}

func calcDown() {
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
	ch <- ds
}

func main() {
	fmt.Scan(&h, &w)

	sc := bufio.NewScanner(os.Stdin)
	s = make([]string, h)
	for i := range s {
		sc.Scan()
		s[i] = sc.Text()
	}

	go calcLeft()
	go calcRight()
	go calcTop()
	go calcDown()

	s1, s2, s3, s4 := <-ch, <-ch, <-ch, <-ch
	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if v := s1[i][j] + s2[i][j] + s3[i][j] + s4[i][j] - 3; v > ans {
				ans = v
			}
		}
	}
	fmt.Println(ans)
}

package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	sc.Split(bufio.ScanWords)

	var h, w int
	fmt.Scan(&h, &w)
	s := make([]string, h)
	hc := make([][]int, h)
	vc := make([][]int, h)
	for i := 0; i < h; i++ {
		s[i] = next()
		hc[i] = make([]int, w)
		vc[i] = make([]int, w)
	}

	for i := 0; i < h; i++ {
		cnt := 0
		for j := 0; j < w; j++ {
			if s[i][j] == '#' {
				cnt = 0
			} else {
				cnt++
			}
			hc[i][j] = cnt
		}
		for j := w - 2; j >= 0; j-- {
			if hc[i][j] > 0 {
				hc[i][j] = max(hc[i][j], hc[i][j+1])
			}
		}
	}

	for j := 0; j < w; j++ {
		cnt := 0
		for i := 0; i < h; i++ {
			if s[i][j] == '#' {
				cnt = 0
			} else {
				cnt++
			}
			vc[i][j] = cnt
		}
		for i := h - 2; i >= 0; i-- {
			if vc[i][j] > 0 {
				vc[i][j] = max(vc[i][j], vc[i+1][j])
			}
		}
	}

	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			ans = max(ans, hc[i][j]+vc[i][j]-1)
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

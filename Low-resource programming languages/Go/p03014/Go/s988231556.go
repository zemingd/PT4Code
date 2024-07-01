package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main()  {
	var h, w int
	fmt.Scan(&h, &w)

	scanner := bufio.NewScanner(os.Stdin)
	s := make([][]uint8, h)
	l, r, u, d := make([][]int, h),  make([][]int, h),  make([][]int, h),  make([][]int, h)
	for i:=0;i<h;i++ {
		l[i], r[i], u[i], d[i] = make([]int, w),  make([]int, w),  make([]int, w),  make([]int, w)
		s[i] = make([]uint8, w)
		scanner.Scan()
		for j:=0;j<w;j++ {
			s[i][j] = scanner.Text()[j]
		}
	}
	for i:=0;i<h;i++ {
		for j := 0; j < w; j++ {
			if s[i][j] == '#' {
				l[i][j] = 0
			} else if j == 0 {
				l[i][j] = 1
			} else {
				l[i][j] = l[i][j-1] + 1
			}

			if s[i][j] == '#' {
				u[i][j] = 0
			} else if i == 0 {
				u[i][j] = 1
			} else {
				u[i][j] = u[i-1][j] + 1
			}
		}
	}
	for i:=h-1;i>=0;i-- {
		for j := w-1; j>=0; j-- {
			if s[i][j] == '#' {
				r[i][j] = 0
			} else if j == w-1 {
				r[i][j] = 1
			} else {
				r[i][j] = r[i][j+1]+1
			}
			if s[i][j] == '#' {
				d[i][j] = 0
			} else if i == h-1 {
				d[i][j] = 1
			} else {
				d[i][j] = d[i+1][j]+1
			}
		}
	}

	max := 0
	for i:=0;i<h;i++ {
		for j:=0;j<w;j++ {
			max = int(math.Max(float64(max), float64(l[i][j]+r[i][j]+u[i][j]+d[i][j]-3)))
		}
	}
	fmt.Println(max)
}
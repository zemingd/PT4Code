package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

type point struct {
	x, l int
}

type ps []point

func (p ps) Len() int {
	return len(p)
}
func (p ps) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}
func (p ps) Less(i, j int) bool {
	return p[i].x < p[j].x
}

func dup(a, b point) bool {
	A, B := float64(a.x-a.l)+0.0001, float64(a.x+a.l)-0.0001
	X, Y := float64(b.x-b.l)+0.0001, float64(b.x+b.l)-0.0001
	return X <= B && A <= Y
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	points := make([]point, N)
	for i := 0; i < N; i++ {
		points[i].x = nextInt(sc)
		points[i].l = nextInt(sc)
	}
	sort.Sort(ps(points))
	for i := 0; i+1 < N; i++ {
		if dup(points[i], points[i+1]) {
			// ロボットiとロボットi+1は重なる
			// どっちを取り除いたほうが良いか判定
			if i+2 < N {
				if dup(points[i], points[i+2]) {
					// iはi+2とも重なる
					// iを除く
					points[i].x = -1
				} else {
					// iはi+2とは重ならない
					// i+1を除く
					points[i+1] = points[i]
					points[i].x = -1
					points[i].l = -1
				}
			} else {
				points[i].x = -1
				points[i].l = -1
			}
		}
	}
	ans := 0
	for i := 0; i < len(points); i++ {
		if points[i].x != -1 {
			ans++
		}
	}
	fmt.Println(ans)
}

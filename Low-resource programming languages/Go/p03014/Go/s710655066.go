package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strings"
)

var H, W int

func main() {
	fmt.Scan(&H, &W)
	reader := bufio.NewScanner(os.Stdin)
	//reader.Split(bufio.ScanWords)

	S := make([][]string, H)

	left := [2100][2100]int{}
	right := [2100][2100]int{}
	up := [2100][2100]int{}
	down := [2100][2100]int{}

	// 入力
	for i := 0; i < H; i++ {
		reader.Scan()
		S[i] = strings.Split(reader.Text(), "")
	}

	// left
	for i := 0; i < H; i++ {
		var cnt int
		for j := 0; j < W; j++ {
			if S[i][j] == "#" {
				left[i][j] = 0
			} else {
				cnt++
				left[i][j] = cnt
			}
		}
	}
	// right
	for i := 0; i < H; i++ {
		var cnt int
		for j := W - 1; 0 <= j; j-- {
			if S[i][j] == "#" {
				right[i][j] = 0
			} else {
				cnt++
				right[i][j] = cnt
			}
		}
	}
	// up
	for j := 0; j < W; j++ {
		var cnt int
		for i := 0; i < H; i++ {
			if S[i][j] == "#" {
				up[i][j] = 0
			} else {
				cnt++
				up[i][j] = cnt
			}
		}
	}
	// down
	for j := 0; j < W; j++ {
		var cnt int
		for i := H - 1; 0 <= i; i-- {
			if S[i][j] == "#" {
				down[i][j] = 0
			} else {
				cnt++
				down[i][j] = cnt
			}
		}
	}

	var ans int
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if S[i][j] != "#" {
				ans = max(ans, left[i][j]+right[i][j]+up[i][j]+down[i][j]-3)
			}
		}
	}
	fmt.Println(ans)
}

/*  ----------------------------------------  */

func max(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Max(float64(x[i]), float64(res)))
	}
	return res
}

func min(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Min(float64(x[i]), float64(res)))
	}
	return res
}
func pow(x, y int) int { return int(math.Pow(float64(x), float64(y))) }
func abs(x int) int    { return int(math.Abs(float64(x))) }
func floor(x int) int  { return int(math.Floor(float64(x))) }

type LR struct {
	L int
	R int
}

// type LR []int

// func (a SortBy) Len() int           { return len(a) }
// func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
// func (a SortBy) Less(i, j int) bool { return a[i] < a[j] }

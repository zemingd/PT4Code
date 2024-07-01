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

	// left
	for i := 0; i < H; i++ {
		reader.Scan()
		S[i] = strings.Split(reader.Text(), "")
		if S[i][0] != "#" {
			left[i][0] = 1
		}
		for j := 1; j < W; j++ {
			if S[i][j] == "#" {
				left[i][j] = 0
			} else {
				left[i][j] = left[i][j-1] + 1
			}
		}
	}
	// right
	for i := 0; i < H; i++ {
		if S[i][W-1] != "#" {
			right[i][W-1] = 1
		}
		for j := W - 2; 0 <= j; j-- {
			if S[i][j] == "#" {
				right[i][j] = 0
			} else {
				right[i][j] = right[i][j+1] + 1
			}
		}
	}
	// up
	for j := 0; j < W; j++ {
		if S[0][j] != "#" {
			left[0][j] = 1
		}
		for i := 1; i < H; i++ {
			if S[i][j] == "#" {
				up[i][j] = 0
			} else {
				up[i][j] = up[i-1][j] + 1
			}
		}
	}
	// down
	for j := 0; j < W; j++ {
		if S[H-1][j] != "#" {
			down[H-1][j] = 1
		}

		for i := H - 2; 0 <= i; i-- {
			if S[i][j] == "#" {
				down[i][j] = 0
			} else {
				down[i][j] = down[i+1][j] + 1
			}
		}
	}

	var ans int
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if S[i][j] != "#" {
				ans = max(ans, left[i][j]+right[i][j]+up[i][j]+down[i][j]-2)
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

package main

import (
	"bufio"
	"flag"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner *bufio.Scanner

func nextInt() int {
	scanner.Scan()

	var i, _ = strconv.Atoi(scanner.Text())

	return i
}

func nextString() string {
	scanner.Scan()

	return scanner.Text()
}

func initScanner() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

// math functuon
func maxInt(a, b int) int {
	return int(math.Max(float64(a), float64(b)))
}
func minInt(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

// 階乗
func factorial(n int64) int64 {
	if n < 1 {
		return 1
	}

	return n * factorial(n-1)
}

// 順列
func permutation(n, k int64) int64 {
	return factorial(n) / factorial(n-k)
}

// 組み合わせ
func combination(n, k int64) int64 {
	if k == 0 || k == n {
		return 1
	}

	return permutation(n, k) / factorial(k)
}

// logger
var isDebug = true

func log(format string, args ...interface{}) {
	if !isDebug {
		return
	}

	fmt.Printf(format+"\n", args...)
}

func main() {
	var debugFlag = flag.Bool("debug-mode", false, "debug flag")
	flag.Parse()
	isDebug = *debugFlag

	initScanner()

	var h, w = nextInt(), nextInt()

	var areas = [][]Area{}
	var input = [][]rune{}
	for i := 0; i < h; i++ {
		var s = nextString()
		log("%s", s)

		var rowArea = make([]Area, w)
		var row = make([]rune, w)

		for j := 0; j < w; j++ {
			var area = Area{X: j, Y: i}

			if s[j] == '#' {
				area.IsBlock = true
			}

			rowArea[j] = area
			row[j] = rune(s[j])
		}

		areas = append(areas, rowArea)
		input = append(input, row)
	}

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if input[i][j] == '#' {
				continue
			}

			if i == 0 || input[i-1][j] == '#' {
				areas[i][j].YGroup = &Group{Score: 0}
			} else {
				areas[i][j].YGroup = areas[i-1][j].YGroup
			}

			areas[i][j].YGroup.Score++

			if j == 0 || input[i][j-1] == '#' {
				areas[i][j].XGroup = &Group{Score: 0}
			} else {
				areas[i][j].XGroup = areas[i][j-1].XGroup
			}
			areas[i][j].XGroup.Score++
		}
	}
	//	log("%+v", areas)

	var max = -1
	for i := 0; i < h; i++ {
		var s = ""
		for j := 0; j < w; j++ {
			if areas[i][j].IsBlock {
				s += "0"
				continue
			}

			s += strconv.Itoa(areas[i][j].Score())

			max = maxInt(max, areas[i][j].Score())
			if max < areas[i][j].Score() {
				max = areas[i][j].Score()
			}
		}

		log("%s", s)
	}

	fmt.Println(max)

}

type Area struct {
	X       int
	Y       int
	XGroup  *Group
	YGroup  *Group
	IsBlock bool
}

func (area Area) Score() int {
	if area.IsBlock {
		return 0
	}

	return area.XGroup.Score + area.YGroup.Score - 1
}

type Group struct {
	Score int
}

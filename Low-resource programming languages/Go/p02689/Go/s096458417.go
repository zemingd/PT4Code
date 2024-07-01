package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const initBufSize, maxBufSize = 10000, 1000000

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts(n int) []int {
	res := make([]int, n)
	for i := range res {
		res[i] = nextInt()
	}
	return res
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func pow(r, n int) int {
	return int(math.Pow(float64(r), float64(n)))
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initBufSize), maxBufSize)
	n := nextInt()
	m := nextInt()
	//丘の高さを格納
	height := make([]int, n+1)
	//良い展望台はTrue
	goodHill := make(map[int]bool)
	for i := 1; i <= n; i++ {
		height[i] = nextInt()
		goodHill[i] = true
	}
	//道が繋がっている丘の高さを比較する
	var from, to, count int
	for i := 0; i < m; i++ {
		from = nextInt()
		to = nextInt()
		//低い方は良い展望台ではない。同じ高さの場合はどちらも良い展望台ではない。
		if height[from] < height[to] && goodHill[from] {
			goodHill[from] = false
		} else if height[from] > height[to] && goodHill[to] {
			goodHill[to] = false
		} else if height[from] == height[to] {
			if goodHill[from] {
				goodHill[from] = false
			}
			if goodHill[to] {
				goodHill[to] = false
			}
		}
	}
	for i := range goodHill {
		if goodHill[i] {
			count++
		}
	}
	fmt.Println(count)
}

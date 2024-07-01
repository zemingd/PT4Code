package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func intMax(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)

	H, W := scanInt(), scanInt()
	Map := make([]string, H)
	for i := 0; i < H; i++ {
		sc.Scan()
		Map[i] = sc.Text()
	}

	cntMap := make([][]int, H)
	for i := 0; i < H; i++ {
		cntMap[i] = make([]int, W)
	}

	// right
	for i := 0; i < H; i++ {
		cnt := 0
		for j := 0; j < W; j++ {
			if string(Map[i][j]) == "#" {
				cnt = 0
			} else {
				cnt++
				cntMap[i][j] += cnt
			}
		}
	}

	// left
	for i := 0; i < H; i++ {
		cnt := 0
		for j := W - 1; j >= 0; j-- {
			if string(Map[i][j]) == "#" {
				cnt = 0
			} else {
				cnt++
				cntMap[i][j] += cnt
			}
		}
	}

	// up
	for j := 0; j < W; j++ {
		cnt := 0
		for i := 0; i < H; i++ {
			if string(Map[i][j]) == "#" {
				cnt = 0
			} else {
				cnt++
				cntMap[i][j] += cnt
			}
		}
	}

	// down
	for j := 0; j < W; j++ {
		cnt := 0
		for i := H - 1; i >= 0; i-- {
			if string(Map[i][j]) == "#" {
				cnt = 0
			} else {
				cnt++
				cntMap[i][j] += cnt
			}
		}
	}

	ans := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			ans = intMax(ans, cntMap[i][j]-3)
		}
	}
	fmt.Println(ans)
}

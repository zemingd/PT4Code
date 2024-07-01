package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	H := nextInt()
	W := nextInt()
	m := make([]string, H)
	val1 := make([][]int, H)
	val2 := make([][]int, H)
	for i := 0; i < H; i++ {
		val1[i] = make([]int, W)
		val2[i] = make([]int, W)
	}

	for i := 0; i < H; i++ {
		m[i] = nextString()
	}

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if string(m[i][j]) == "#" {
				val1[i][j] = 0
				continue
			}
			if j > 0 {
				val1[i][j] = val1[i][j-1] + 1
			} else {
				val1[i][j] = 1
			}
		}

		for j := W - 2; j >= 0; j-- {
			if val1[i][j] == 0 {
				continue
			}
			val1[i][j] = Max(val1[i][j], val1[i][j+1])
		}

	}

	for i := 0; i < W; i++ {
		for j := 0; j < H; j++ {
			if string(m[j][i]) == "#" {
				val2[j][i] = 0
				continue
			}
			if j > 0 {
				val2[j][i] = val2[j-1][i] + 1
			} else {
				val2[j][i] = 1
			}
		}
		for j := H - 2; j >= 0; j-- {
			if val1[i][j] == 0 {
				continue
			}
			val2[j][i] = Max(val2[j][i], val2[j+1][i])
		}
	}
	maxV := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			maxV = Max(maxV, val1[i][j]+val2[i][j]-1)
		}
	}
	fmt.Println(maxV)
}

func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}

func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}

func nextString() string {
	return nextReader()
}

func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}

var nextReader func() string

func init() {
	nextReader = NewScanner()
}

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func Min(a int, b int) int {
	if a > b {
		return b
	}
	return a
}

func Max(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func MinA(arg ...int) int {
	var s = arg[0]
	for _, v := range arg {
		s = Min(s, v)
	}
	return s
}

func MaxA(arg ...int) int {
	var s = arg[0]
	for _, v := range arg {
		s = Max(s, v)
	}
	return s
}

func Abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

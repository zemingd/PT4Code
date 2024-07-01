package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextLineToStringArray() []string {
	line := nextLine()
	return strings.Split(line, " ")
}

func nextLineToIntArray() []int {
	parts := nextLineToStringArray()
	arr := make([]int, len(parts))
	for i, s := range parts {
		arr[i], _ = strconv.Atoi(s)
	}
	return arr
}

func nextLineToInt64Array() []int64 {
	parts := nextLineToStringArray()
	arr := make([]int64, len(parts))
	for i, s := range parts {
		arr[i], _ = strconv.ParseInt(s, 10, 64)
	}
	return arr
}

func nextLineToFloat32Array() []float32 {
	parts := nextLineToStringArray()
	arr := make([]float32, len(parts))
	for i, s := range parts {
		n, _ := strconv.ParseFloat(s, 32)
		arr[i] = float32(n)
	}
	return arr
}

func nextLineToFloat64Array() []float64 {
	parts := nextLineToStringArray()
	arr := make([]float64, len(parts))
	for i, s := range parts {
		arr[i], _ = strconv.ParseFloat(s, 64)
	}
	return arr
}

func readLines(n int) []string {
	arr := make([]string, n)
	for i := 0; i < n; i++ {
		arr[i] = nextLine()
	}
	return arr
}

func readLinesInt(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i], _ = strconv.Atoi(nextLine())
	}
	return arr
}

func readLinesInt64(n int) []int64 {
	arr := make([]int64, n)
	for i := 0; i < n; i++ {
		arr[i], _ = strconv.ParseInt(nextLine(), 10, 64)
	}
	return arr
}

func readLinesFloat32(n int) []float32 {
	arr := make([]float32, n)
	for i := 0; i < n; i++ {
		n, _ := strconv.ParseFloat(nextLine(), 32)
		arr[i] = float32(n)
	}
	return arr
}

func readLinesFloat64(n int) []float64 {
	arr := make([]float64, n)
	for i := 0; i < n; i++ {
		arr[i], _ = strconv.ParseFloat(nextLine(), 64)
	}
	return arr
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func submit(n int, line string) int {
	return 0
}

func main() {
	arr := nextLineToIntArray()
	h := arr[0]
	w := arr[1]
	S := readLines(h)

	x := byte('#')
	ans := 0
	for i, line := range S {
		for j := range line {
			if line[j] == x {
				continue
			}
			t := 1
			for l := j + 1; l < w; l++ {
				if line[l] == x {
					break
				}
				t++
			}
			for l := j - 1; l >= 0; l-- {
				if line[l] == x {
					break
				}
				t++
			}
			for l := i + 1; l < h; l++ {
				if S[l][j] == x {
					break
				}
				t++
			}
			for l := i - 1; l >= 0; l-- {
				if S[l][j] == x {
					break
				}
				t++
			}
			ans = max(ans, t)
		}
	}

	fmt.Println(ans)
}

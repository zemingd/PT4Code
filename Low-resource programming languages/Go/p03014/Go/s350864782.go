package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func solve(h, w int, s []string) int {
	sumH := make([][]int, h)
	for i := 0; i < h; i++ {
		sumH[i] = make([]int, w)
	}
	for i := 0; i < h; i++ {
		start := 0
		end := 0
		for j := 0; j < w; j++ {
			if s[i][j] == '.' {
				end++
			} else {
				for k := start; k < end; k++ {
					sumH[i][k] = end - start
				}
				end++
				start = end
			}
		}
		for k := start; k < end; k++ {
			sumH[i][k] = end - start
		}
	}

	sumW := make([][]int, h)
	for i := 0; i < h; i++ {
		sumW[i] = make([]int, w)
	}
	for j := 0; j < w; j++ {
		start := 0
		end := 0
		for i := 0; i < h; i++ {
			if s[i][j] == '.' {
				end++
			} else {
				for k := start; k < end; k++ {
					sumW[k][j] = end - start
				}
				end++
				start = end
			}
		}
		for k := start; k < end; k++ {
			sumW[k][j] = end - start
		}
	}

	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			ans = max(ans, sumH[i][j]+sumW[i][j]-1)
		}
	}
	return ans
}

func main() {
	h, _ := strconv.Atoi(input())
	w, _ := strconv.Atoi(input())
	s := make([]string, h)
	for i := 0; i < h; i++ {
		s[i] = input()
	}
	fmt.Println(solve(h, w, s))
}

package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	// "sort"
)

var stdin = initStdin()
 
func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func scanInt() int {
	stdin.Scan()
	i, _ := strconv.Atoi(stdin.Text())
	return i
}

func scanStr() string {
	stdin.Scan()
	return stdin.Text()
}

type ia []int

func (ia ia)Len() int {
	return len(ia)
}
func (ia ia)Swap(i, j int) {
	ia[i], ia[j] = ia[j], ia[i]
}
func (ia ia)Less(i, j int) bool {
	return ia[i] < ia[j]
}

func main() {
	h := scanInt()
	w := scanInt()
	var m [][]byte
	scw := make([][]int, h)
	sch := make([][]int, h)
	for i := 0; i < h; i++ {
		m = append(m, []byte(scanStr()))
		scw[i] = make([]int, w)
		sch[i] = make([]int, w)
	}

	for i := 0; i < h; i++ {
		sq := 0
		for j := 0; j < w; j++ {
			if m[i][j] == '.' {
				sq++
				if j == w-1 {
					scw[i][j] = sq
				}
			} else if sq > 0 {
				scw[i][j - 1] = sq
				sq = 0
			}
		}
	}

	for i := 0; i < w; i++ {
		sq := 0
		for j := 0; j < h; j++ {
			if m[j][i] == '.' {
				sq++
				if j == h-1 {
					sch[j][i] = sq 
				}
			} else if sq > 0 {
				sch[j - 1][i] = sq
				sq = 0
			}		
		}
	}

	for i := h-1; i >= 0; i-- {
		sq := 0
		for j := w-1; j >= 0; j-- {
			if m[i][j] == '.' {
				if sq < scw[i][j] {
					sq = scw[i][j]
				} else {
					scw[i][j] = sq
				}
			} else {
				sq = 0
			}
		}
	}

	for i := w-1; i >= 0; i-- {
		sq := 0
		for j := h-1; j >= 0; j-- {
			if m[j][i] == '.' {
				if sq < sch[j][i] {
					sq = sch[j][i]
				} else {
					sch[j][i] = sq
				}
			} else {
				sq = 0
			}
		}
	}

	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			tmp := scw[i][j] + sch[i][j] - 1
			if ans < tmp && m[i][j] == '.' {
				ans = tmp
			}
		}
	}
	fmt.Println(ans)
}
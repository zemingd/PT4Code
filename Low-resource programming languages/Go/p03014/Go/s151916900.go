package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	//	"strings"
)

var sc = bufio.NewScanner(os.Stdin)
var buf = make([]byte, 1000000)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func vec_i(s []string) []int {
	v := make([]int, len(s))
	for i, e := range s {
		v[i], _ = strconv.Atoi(e)
	}
	return v
}

func geti() int {
	n, _ := strconv.Atoi(gets())
	return n
}

func main() {
	sc.Buffer(buf, cap(buf))
	var h, w int = 0, 0
	fmt.Sscanln(gets(), &h, &w)
	s := make([][]byte, h)
	for i := 0; i < h; i++ {
		s[i] = []byte(gets())
	}
	var dw [][]int
	var dh [][]int
	for i := 0; i < h; i++ {
		var cw []int
		count := 0
		for j := 0; j < w; j++ {
			if s[i][j] == '#' {
				cw = append(cw, 0)
			} else if j == 0 || s[i][j-1] == '#' {
				count = 0
				for k := j; k < w; k++ {
					if s[i][k] == '.' {
						count++
					} else {
						break
					}
				}
				cw = append(cw, count)
			} else {
				cw = append(cw, count)
			}
		}
		dw = append(dw, cw)
	}
	for j := 0; j < w; j++ {
		var ch []int
		count := 0
		for i := 0; i < h; i++ {
			if s[i][j] == '#' {
				ch = append(ch, 0)
			} else if i == 0 || s[i-1][j] == '#' {
				count = 0
				for k := i; k < h; k++ {
					if s[k][j] == '.' {
						count++
					} else {
						break
					}
				}
				ch = append(ch, count)
			} else {
				ch = append(ch, count)
			}
		}
		dh = append(dh, ch)
	}
	max := 0
	var sum int
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			sum = dw[i][j] + dh[j][i]
			if max < sum {
				max = sum
			}
		}
	}
	fmt.Println(max - 1)
}

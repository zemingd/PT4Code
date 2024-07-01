package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

var sc = NewScanner(os.Stdin, 1000000)

func main() {
	N := sc.readInt()
	W := sc.readInt()
	w := make([]int, 0)
	v := make([]int, 0)
	for i := 0; i < N; i++ {
		w = append(w, sc.readInt())
		v = append(v, sc.readInt())
	}

	current := make([]int, W+1)
	next := make([]int, W+1)

	for i := 0; i < N; i++ {
		for j := 0; j <= W; j++ {
			if j >= w[i] {
				next[j] = max(current[j-w[i]]+v[i], current[j])
			} else {
				next[j] = current[j]
			}
		}
		for j := 0; j <= W; j++ {
			current[j] = next[j]
		}
	}

	result := 0
	for _, v := range current {
		if v > result {
			result = v
		}
	}

	fmt.Println(result)
}

type Scanner struct {
	*bufio.Scanner
}

func (scn *Scanner) readInt() int {
	scn.Scanner.Scan()
	i, _ := strconv.Atoi(scn.Scanner.Text())
	return i
}

func NewScanner(r io.Reader, bufSize int) *Scanner {
	buf := make([]byte, bufSize)
	scn := bufio.NewScanner(r)
	scn.Buffer(buf, bufSize)
	scn.Split(bufio.ScanWords)
	return &Scanner{scn}
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

package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(x int, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

func max(x int, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}

// [1 -2 -1 2]
// [
//   [1 -1 -2 0]
//   [1 1 0 2]
//   [1 1 1 3]
//   [1 1 1]
//   [1 1]
//   [1]
// ]
// [1 1 3]

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = nextInt()
	}
	//fmt.Printf("v: %v\n", v)
	s := make([][]int, k)
	le := make([]int, k)
	ri := make([]int, k)

	sum := 0
	nv := []int{}
	for i := 0; i < k; i++ {
		sum += v[i]
		if v[i] < 0 {
			nv = append(nv, v[i])
			sort.Ints(nv)
			//fmt.Printf("nv: %v\n", nv)
		}
		s[i] = make([]int, k)
		s[i][0] = sum
		sum2 := sum
		for j := 1; j < min(k-i, len(nv)+1); j++ {
			//fmt.Printf("i:%v, j:%v\n", i, j)
			sum2 += -nv[j-1]
			s[i][j] = sum2
		}
	}
	//fmt.Printf("%v\n", s)
	maxSS := 0
	for i := 0; i < k; i++ {
		maxS := 0
		for j := 0; j <= i; j++ {
			maxS = max(maxS, s[i-j][j])
		}
		maxSS = max(maxSS, maxS)
		le[i] = maxSS
	}
	//fmt.Printf("%v\n", le)

	sum = 0
	nv = []int{}
	s = make([][]int, k)
	for i := 0; i < k; i++ {
		sum += v[n-1-i]
		if v[n-1-i] < 0 {
			nv = append(nv, v[n-1-i])
			sort.Ints(nv)
			//fmt.Printf("nv: %v\n", nv)
		}
		s[i] = make([]int, k)
		s[i][0] = sum
		sum2 := sum
		for j := 1; j < min(k-i, len(nv)+1); j++ {
			//fmt.Printf("i:%v, j:%v\n", i, j)
			sum2 += -nv[j-1]
			s[i][j] = sum2
		}
	}
	//fmt.Printf("%v\n", s)
	maxSS = 0
	for i := 0; i < k; i++ {
		maxS := 0
		for j := 0; j <= i; j++ {
			maxS = max(maxS, s[i-j][j])
		}
		maxSS = max(maxSS, maxS)
		ri[i] = maxSS
	}
	//fmt.Printf("%v\n", ri)

	maxScore := le[k-1]
	for i := 0; i < k-1; i++ {
		maxScore = max(maxScore, le[k-i-2]+ri[i])
	}
	maxScore = max(maxScore, ri[k-1])
	_, _ = fmt.Fprintf(writer, "%d", maxScore)
}

func main() {
	answer(os.Stdin, os.Stdout)
}

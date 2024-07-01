package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner = bufio.NewScanner(os.Stdin)
var wr *bufio.Writer = bufio.NewWriter(os.Stdout)

func nextInt() int {
	sc.Scan()
	val, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return val
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
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

type edge struct {
	to  int
	col int
	idx int
}

type pair struct {
	f, s int
}

func main() {
	sc.Split(bufio.ScanWords)
	//
	N, H := nextInt(), nextInt()
	A := make([]int, N)
	B := make([]int, N)
	ma := 0
	for i := 0; i < N; i++ {
		A[i] = nextInt()
		B[i] = nextInt()
		ma = max(ma, A[i])
	}
	//sort.Slice(B, func(i, j int) bool { return B[i] > B[j] })
	sort.Sort(sort.Reverse(sort.IntSlice(B)))
	//fmt.Println(B)
	res := 0
	for _, b := range B {
		if b <= ma {
			break
		}
		res++
		H -= b
		if H <= 0 {
			break
		}
	}
	if H > 0 {
		if H%ma == 0 {
			res += H / ma
		} else {
			res += H/ma + 1
		}

	}
	fmt.Fprintln(wr, res)
	wr.Flush()
}

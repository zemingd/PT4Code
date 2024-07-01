package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
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

func main() {
	sc.Split(bufio.ScanWords)
	//
	A, B, C, D, E, F := nextInt(), nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	w, s := 0, 0
	rw, rs := 0, 0
	rr := 0.0
	for a := 0; a <= 30/A; a++ {
		w = 100 * A * a
		for b := 0; b <= 30/B; b++ {
			w += 100 * B * b
			if w > F || w == 0 {
				continue
			}
			for c := 0; c <= 3000/C; c++ {
				s = C * c
				if w+s > F {
					continue
				}
				ms := w * E / 100
				if s > ms {
					continue
				}
				//fmt.Println(w, s)
				//fmt.Println(ms-s, F-w-s)
				if (ms-s)/D*D < F-w-s {
					s += (ms - s) / D * D
				}
				r := float64(s) / float64(w+s)
				if r > rr {
					rr = r
					rw = w
					rs = s
				}
			}
		}
	}
	fmt.Fprintln(wr, fmt.Sprintf("%d %d", rw+rs, rs))
	wr.Flush()
}

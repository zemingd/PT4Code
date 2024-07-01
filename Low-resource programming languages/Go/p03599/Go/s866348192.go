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
	wl := make([]int, 0, 3001)
	sl := make([]int, 0, 3001)
	G := F * E / 100
	for a := 0; a <= F/(100*A); a++ {
		for b := 0; b <= F/(100*B); b++ {
			if 100*(A*a+B*b) > F {
				continue
			}
			wl = append(wl, 100*(A*a+B*b))
		}
	}
	for c := 0; c <= G/C; c++ {
		for d := 0; d <= G/D; d++ {
			if (C*c + D*d) > F {
				continue
			}
			sl = append(sl, C*c+D*d)
		}
	}
	rr := 0.0
	rw, rs := 0, 0
	for _, w := range wl {
		for _, s := range sl {
			if w+s > F {
				continue
			}
			if w*E/100 < s {
				continue
			}
			r := float64(s) / float64(w+s)
			if r > rr {
				rr = r
				rw = w
				rs = s
			}
		}
	}
	fmt.Fprintln(wr, fmt.Sprintf("%d %d", rw+rs, rs))
	wr.Flush()
}

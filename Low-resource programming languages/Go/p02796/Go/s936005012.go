package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	robs := make(Robots, n)
	for i := 0; i < n; i++ {
		X, L := int64(nextInt()), int64(nextInt())
		robs[i] = &Robot{l: X - L + 1, r: X + L - 1}
	}

	// 左からみる
	sort.Sort(robs)
	ans := 0
	end := int64(-1000000001)
	for i := 0; i < n; i++ {
		if end < robs[i].l {
			end = robs[i].r
			ans++
		}
	}

	// 右からみる
	sort.Sort(RobotsRev(robs))
	ansRev := 0
	begin := int64(2000000001)
	for i := n - 1; i >= 0; i-- {
		if robs[i].r < begin {
			begin = robs[i].l
			ansRev++
		}
	}

	puts(max(ans, ansRev))
	wt.Flush()
}

type Robot struct {
	l, r int64
}

type Robots []*Robot

func (rs Robots) Len() int {
	return len(rs)
}

func (rs Robots) Less(i, j int) bool {
	return rs[i].r <= rs[j].r
}

func (rs Robots) Swap(i, j int) {
	rs[i], rs[j] = rs[j], rs[i]
}

type RobotsRev []*Robot

func (rs RobotsRev) Len() int {
	return len(rs)
}

func (rs RobotsRev) Less(i, j int) bool {
	return rs[i].l <= rs[j].l
}

func (rs RobotsRev) Swap(i, j int) {
	rs[i], rs[j] = rs[j], rs[i]
}

var (
	sc  = bufio.NewScanner(os.Stdin)
	rdr = bufio.NewReaderSize(os.Stdin, 1000000)
	wt  = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}

func max(nums ...int) int {
	ret := nums[0]
	for _, v := range nums {
		if v > ret {
			ret = v
		}
	}
	return ret
}

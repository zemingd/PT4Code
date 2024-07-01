package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(next(), 64)
	return f
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

type Sord struct {
	id, attack, throw int
}

type Sords []*Sord

func (ss Sords) Len() int {
	return len(ss)
}

func (ss Sords) Less(i, j int) bool {
	return ss[i].throw > ss[j].throw
}

func (ss Sords) Swap(i, j int) {
	ss[i], ss[j] = ss[j], ss[i]
}

func main() {
	sc.Split(bufio.ScanWords)
	n, h := nextInt(), nextInt()
	ss := make(Sords, n)
	// 最後まで残す剣のID
	aMaxID := 0
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		ss[i] = &Sord{i, a, b}
		if ss[aMaxID].attack < a {
			aMaxID = i
		} else if ss[aMaxID].attack == a && ss[aMaxID].throw > b {
			aMaxID = i
		}
	}
	sort.Sort(ss)

	ans := 0
	for i := 0; i < n && ss[aMaxID].attack <= ss[i].throw && h > ss[aMaxID].throw; i++ {
		if aMaxID == ss[i].id {
			continue
		}
		h -= ss[i].throw
		ans++
	}
	if h <= ss[aMaxID].throw {
		ans++
	} else if h > 0 {
		ans += (h-ss[aMaxID].throw-1)/ss[aMaxID].attack + 2
	}
	fmt.Println(ans)
}

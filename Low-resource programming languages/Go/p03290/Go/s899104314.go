package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var d, g int
	fmt.Scan(&d, &g)
	g /= 100

	num := 0
	ps := make([]int, d)
	cs := make([]int, d)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < d; i++ {
		sc.Scan()
		ps[i], _ = strconv.Atoi(sc.Text())
		num += ps[i]
		sc.Scan()
		c, _ := strconv.Atoi(sc.Text())
		cs[i] = c / 100
	}
	rests := make([]bool, d)
	fmt.Printf("%d\n", searchMin(g, 0, rests, ps, cs))
	return
}

func searchMin(g, idx int, rests []bool, ps, cs []int) int {
	if g <= 0 {
		return 0
	}
	if idx == len(rests) {
		return numOfRests(g, rests, ps)
	}

	n, s := fullScore(idx, ps, cs)
	full := searchMin(g-s, idx+1, rests, ps, cs) + n

	nRests := make([]bool, len(rests))
	copy(nRests, rests)
	nRests[idx] = true
	notFull := searchMin(g, idx+1, nRests, ps, cs)
	if notFull < full {
		return notFull
	}
	return full
}

func fullScore(idx int, ps, cs []int) (num, score int) {
	return ps[idx], ps[idx]*(idx+1) + cs[idx]
}

func numOfRests(g int, rests []bool, ps []int) (num int) {
	l := len(rests)
	for i := l; i > 0; i-- {
		if !rests[i-1] {
			continue
		}
		limit := ps[i-1] - 1
		n := (g + i - 1) / i
		if n == 0 {
			break
		}
		if limit < n {
			n = limit
		}
		num += n
		g -= n * i
	}
	if g <= 0 {
		return num
	}
	return math.MaxInt32
}

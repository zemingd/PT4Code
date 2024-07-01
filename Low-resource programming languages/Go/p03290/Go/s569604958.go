package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type prob struct {
	p, score, bonus, sum int
}

func main() {
	d, g := uint(getInt()), getInt()
	ps := make([]prob, d)
	for i := range ps {
		ps[i].p = getInt()
		ps[i].bonus = getInt()
		ps[i].score = (i + 1) * 100
		ps[i].sum = (ps[i].p * ps[i].score) + ps[i].bonus
	}

	ans := 1 << 60
	for i := 0; i < (1 << d); i++ {
		tmp := 0
		cnt := 0
		s := make([]int, 0)
		for j := uint(0); j < d; j++ {
			k := 1 << j
			if (i & k) > 0 {
				tmp += ps[j].sum
				cnt += ps[j].p
			} else {
				for l := 0; l < ps[j].p; l++ {
					s = append(s, ps[j].score)
				}
				s[len(s)-ps[j].p] += ps[j].bonus
			}
		}

		for j := len(s) - 1; tmp < g; j-- {
			tmp += s[j]
			cnt++
		}

		ans = min(ans, cnt)
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}

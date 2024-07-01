package main

import (
	"bufio"
	"os"
	"strconv"
)

const scBufSize = 1 * 1024 * 1024 // 1MB
var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, scBufSize), scBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func main() {
	n := scani()
	k := scani()
	l := scani()

	r1 := []int{}
	for i := 0; i < k; i++ {
		o, d := scanRoad()
		r1 = append(r1, o, d)
	}
	r2 := []int{}
	for i := 0; i < l; i++ {
		o, d := scanRoad()
		r2 = append(r2, o, d)
	}

	road := con(n, r1)
	rail := con(n, r2)

	for i := 0; i < n; i++ {
		g1 := road[i]
		g2 := rail[i]
		if g1 == 0 || g2 == 0 {
			os.Stdout.WriteString("1 ")
			continue
		}

		var ro []int
		var ra []int
		for j := 0; j < n; j++ {
			if g1 == road[j] {
				ro = append(ro, j)
			}
			if g2 == rail[j] {
				ra = append(ra, j)
			}
		}
		c := 0
		for _, v := range ro {
			for _, w := range ra {
				if v == w {
					c++
				}
			}
		}
		os.Stdout.WriteString(strconv.Itoa(c) + " ")
	}
}

func con(n int, r []int) []int {
	road := make([]int, n)
	g := 1
	for i := 0; i < len(r); i = i + 2 {
		o, d := r[i], r[i+1]
		g1 := road[o]
		g2 := road[d]
		if g1+g2 == 0 {
			road[o] = g
			road[d] = g
			g++
		} else if g1 != 0 && g2 != 0 {
			road[d] = g1
			for i := range road {
				if road[i] == g2 {
					road[i] = g1
				}
			}
		} else if g1 != 0 {
			road[d] = g1
		} else {
			road[d] = g2
		}
	}
	return road
}

func scani() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanRoad() (o, d int) {
	o = scani() - 1
	d = scani() - 1
	return
}

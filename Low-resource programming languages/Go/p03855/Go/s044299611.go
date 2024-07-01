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

	road := con(n, k)
	rail := con(n, l)

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

func con(n, k int) []int {
	road := make([]int, n)
	g := 1
	for i := 0; i < k; i++ {
		o, d := scanRoad()
		tmp := road[o] + road[d]
		switch tmp {
		case 0:
			road[o] = g
			road[d] = g
			g++
		case road[o]:
			road[d] = road[o]
		case road[d]:
			road[o] = road[d]
		default:
			road[d] = road[o]
			/*
				for i := range road {
					if road[i] == road[d] {
						road[i] = road[o]
					}
				}
			*/
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

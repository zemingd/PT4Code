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
		if g1.n == 0 || g2.n == 0 {
			os.Stdout.WriteString("1 ")
			continue
		}

		c := 0
		for j := 0; j < n; j++ {
			if g1 == road[j] && g2 == rail[j] {
				c++
			}
		}
		os.Stdout.WriteString(strconv.Itoa(c) + " ")
	}
}

type group struct {
	n int
}

func con(n, k int) []*group {
	road := make([]*group, n)
	g := &group{n: 0}
	for i := range road {
		road[i] = g
	}
	g = &group{n: 1}
	for i := 0; i < k; i++ {
		o, d := scanRoad()
		tmp := road[o].n + road[d].n
		switch tmp {
		case 0:
			road[o] = g
			road[d] = road[o]
			g = &group{n: g.n + 1}
		case road[o].n:
			road[d] = road[o]
		case road[d].n:
			road[o] = road[d]
		default:
			road[d] = road[o]
			for i := range road {
				if road[i] == road[d] {
					road[i] = road[o]
				}
			}
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

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
		if g1.r > 0 {
			os.Stdout.WriteString(strconv.Itoa(g1.r) + " ")
			continue
		}

		c := 0
		for _, v := range append(g1.c, g1.n) {
			for _, w := range append(g2.c, g2.n) {
				if v == w {
					c++
				}
			}
		}
		/*
			fmt.Printf("%#v", g2)
			for _, v := range append(g1.c, g1.n) {
				l := len(g2.c)
				var j int
				if l%2 == 1 {
					j = (l - 1) / 2
				} else {
					j = l / 2
				}
				for {
					log.Printf(" (%d) ", j)

					x := v - g2.c[j]
					if x == 0 {
						c++
						break
					} else if x < 0 {
						j = j / 2
					} else {
						j = j + (j / 2)
					}
					if j > len(g2.c) || j <= 0 {
						break
					}
				}
			}
		*/
		g1.r = c
		os.Stdout.WriteString(strconv.Itoa(c) + " ")
	}
}

type group struct {
	n int
	c []int
	r int
}

func con(n, k int) []*group {
	road := make([]*group, n)
	g := &group{n: 0, c: make([]int, n)}
	for i := range road {
		road[i] = g
	}
	for i := 0; i < k; i++ {
		o, d := scanRoad()
		tmp := road[o].n + road[d].n
		switch tmp {
		case 0:
			road[o] = &group{n: o, c: []int{d}}
			road[d] = road[o]
		case road[o].n:
			road[o].c = append(road[o].c, d)
			road[d] = road[o]
		case road[d].n:
			road[d].c = append([]int{o}, road[d].c...)
			road[o] = road[d]
		default:
			if road[o] != road[d] {
				road[o].c = append(road[o].c, road[d].c...)
				road[o].c = append(road[o].c, d)
				*road[d] = *road[o]
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

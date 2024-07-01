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

	for i := 1; i <= n; i++ {
		g1 := road[i]
		g2 := rail[i]
		// fmt.Printf("TTT: %#v | %#v\n", g1, g2)

		if g1.n == 0 || g2.n == 0 {
			print(1)
			continue
		}

		c := 0
		// fmt.Printf("%d: %d %d\n", i, len(g1.c), len(g2.c))
		for _, v := range append(g1.c, g1.n) {
			for _, w := range append(g2.c, g2.n) {
				// log.Printf("\n%d == %d = %v\n", v, w, v == w)
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
		print(c)
	}
}

const sp = " "

func print(n int) {
	os.Stdout.WriteString(strconv.Itoa(n))
	os.Stdout.WriteString(sp)
}

type group struct {
	n int
	c []int
}

func con(n, k int) []*group {
	road := make([]*group, n+1)
	// oad := make([]*group, n)
	g := &group{n: 0}
	for i := range road {
		road[i] = g
	}
	for i := 0; i < k; i++ {
		o, d := scanRoad()
		if road[o].n != 0 && road[o].n == road[d].n {
			continue
		}

		/*
			time.Sleep(1 * time.Second)
			fmt.Printf("%d ---\n", i)
			fmt.Printf("  %#v | %#v\n", road[o], road[d])
		*/
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
			road[o].c = append(road[o].c, d)
			road[o].c = append(road[o].c, road[d].c...)
			*road[d] = *road[o]
		}
		// fmt.Printf("  %#v | %#v\n\n", road[o], road[d])
	}
	return road
}

func scani() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanRoad() (o, d int) {
	o = scani()
	d = scani()
	return
}

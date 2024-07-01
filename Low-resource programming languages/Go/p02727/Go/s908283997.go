package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	X, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	Y, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	p := make([]int, a)

	sc.Scan()
	b, _ := strconv.Atoi(sc.Text())
	q := make([]int, b)

	sc.Scan()
	c, _ := strconv.Atoi(sc.Text())
	r := make([]int, c)

	for i := 0; i < a; i++ {
		sc.Scan()
		p[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Ints(p)

	for i := 0; i < b; i++ {
		sc.Scan()
		q[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Ints(q)

	for i := 0; i < c; i++ {
		sc.Scan()
		r[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Ints(r)

	var x, y, z, res int
	for (x + y + z) < X+Y {
		pX := 0
		if x < X && len(p) > x {
			pX = p[len(p)-1-x]
		}

		qY := 0
		if y < Y && len(q) > y {
			qY = q[len(q)-1-y]
		}

		rZ := 0
		if len(r) > z {
			rZ = r[len(r)-1-z]
		}

		if rZ > pX && rZ > qY {
			res += rZ
			z++
		} else if pX > qY {
			res += pX
			x++
		} else {
			res += qY
			y++
		}
	}
	fmt.Println(res)
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	A, B, C, D, E, F := getInt(), getInt(), getInt(), getInt(), getInt(), getInt()

	//out("A-F", A, B, C, D, E, F)

	alim := F / (100 * A)
	blim := F / (100 * B)

	suger := (F * E) / 100
	clim := suger / C
	dlim := suger / D

	max := float64(0.0)
	maxw := 0
	maxs := 0

	maxRate := float64(E) * 100.0 / float64(100+E)

	//	out("LOOP", alim, blim, clim, dlim)
	for a := 0; a <= alim; a++ {
		for b := 0; b <= blim; b++ {
			for c := 0; c <= clim; c++ {
				for d := 0; d <= dlim; d++ {
					total := a*A*100 + b*B*100
					stotal := c*C + d*D
					if total == 0 || total+stotal > F {
						continue
					}
					rate := float64(stotal) * 100.0 / float64(stotal+total)
					if rate <= maxRate && max < rate {
						max = rate
						maxw = total
						maxs = stotal
					}
				}
			}
		}
	}
	out(maxw+maxs, maxs)
}

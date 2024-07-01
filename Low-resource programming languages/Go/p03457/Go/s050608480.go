package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type txy struct {
	t int
	x int
	y int
}

type PointTime struct {
	time int
	dx   int
	dy   int
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()

	slice := []txy{
		{
			t: 0,
			x: 0,
			y: 0,
		},
	}

	for i := 0; i < N; i++ {
		t := nextInt()
		x := nextInt()
		y := nextInt()

		slice = append(slice, txy{
			t: t,
			x: x,
			y: y,
		})
	}

	can := true
	for i := 0; i < N; i++ {
		dt := slice[i+1].t - slice[i].t
		dist := int(math.Abs(float64(slice[i+1].x-slice[i].x)) + math.Abs(float64(slice[i+1].y-slice[i].y)))
		if dt < dist {
			can = false
		}

		if dist%2 != dt%2 {
			can = false
		}

	}

	if can {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

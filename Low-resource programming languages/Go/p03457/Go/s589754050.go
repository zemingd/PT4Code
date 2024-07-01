package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"math"
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

L:
	for i := 0; i < len(slice)-1; i++ {
		sp := PointTime{slice[i+1].t, slice[i+1].x, slice[i+1].y}
		ep := PointTime{slice[i].t, slice[i].x, slice[i].y}
		//fmt.Println(sp)
		//fmt.Println(ep)
		if !rec(sp, ep) {
			can = false
			break L
		}
	}

	if can {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func rec(start PointTime, end PointTime) bool {
	//fmt.Println(start)
	//fmt.Println(end)
	if start.time == end.time {
		if start.dx == end.dx && start.dy == end.dy {
			return true
		}
		return false
	}

	subx := start.dx-end.dx
	suby := start.dy-end.dy
	subtime := start.time-end.time
	if math.Abs(subx) + math.Abs(suby) > math.Abs(subtime) {
		return false
	}

	return rec(PointTime{time: start.time - 1, dx: start.dx + 1, dy: start.dy}, end) || rec(PointTime{time: start.time - 1, dx: start.dx - 1, dy: start.dy}, end) || rec(PointTime{time: start.time - 1, dx: start.dx, dy: start.dy + 1}, end) || rec(PointTime{time: start.time - 1, dx: start.dx, dy: start.dy - 1}, end)

}

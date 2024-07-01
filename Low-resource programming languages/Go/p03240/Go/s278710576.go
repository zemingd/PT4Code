package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func next() int64 {
	s.Scan()
	i, _ := strconv.ParseInt(s.Text(), 10, 64)
	return i
}

type Point struct {
	x, y int
	h    int64
}

func main() {
	s.Split(bufio.ScanWords)
	N := next()
	points := make([]Point, N)
	var i int64
	for i = 0; i < N; i++ {
		points[i] = Point{int(next()), int(next()), next()}
	}

	//fmt.Println(points)

	var H0 int64 = -1
	var cx, cy int

BR:
	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			H0 = -1
			for i := 0; i < len(points); i++ {
				p := points[i]

				if H0 == -1 {
					if p.h != 0 {
						H0 = p.h + int64(math.Abs(float64(p.x-x))) + int64(math.Abs(float64(p.y-y)))
					} else {
						points = append(points, p)
					}
				} else {
					if p.h != 0 {
						H1 := p.h + int64(math.Abs(float64(p.x-x))) + int64(math.Abs(float64(p.y-y)))
						if H0 != H1 {
							H0 = -1
							break
						}
					} else {
						if H0-int64(math.Abs(float64(p.x-x)))-int64(math.Abs(float64(p.y-y))) > 0 {
							H0 = -1
							break
						}
					}
				}
			}

			if H0 != -1 {
				cx = x
				cy = y
				break BR
			}
		}
	}

	fmt.Println(cx, cy, H0)
}

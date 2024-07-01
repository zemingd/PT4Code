package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

type Point struct {
	T int
	X int
	Y int
}

func main() {
	s := IOInitialize()
	N := Int(s)
	points := scanNums(s, N)
	currentPoint := Point{T: 0, X: 0, Y: 0}
	for _, point := range points {
		dis := abs(abs(currentPoint.X-point.X) + abs(currentPoint.Y-point.Y))
		tDiff := point.T - currentPoint.T
		if dis > tDiff || tDiff%2 != dis%2 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func IOInitialize() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func Int(s *bufio.Scanner) int {
	if !s.Scan() {
		panic("scan error")
	}

	value, err := strconv.Atoi(s.Text())
	if err != nil {
		panic("text to int error")
	}
	return value
}

func scanNums(s *bufio.Scanner, len int) (points []Point) {
	points = []Point{}
	for i := 0; i < len; i++ {
		t := Int(s)
		x := Int(s)
		y := Int(s)
		points = append(points, Point{T: t, X: x, Y: y})
	}
	return
}

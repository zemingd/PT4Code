package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type Point struct {
	X, Y int
}

func dis (a, b Point) float64 {
	return math.Sqrt(float64((a.X - b.X)*(a.X - b.X) + (a.Y - b.Y)*(a.Y - b.Y)))
}

func perm(a []Point, f func([]Point), i int) {
	if i > len(a) {
		f(a)
		return
	}
	perm(a, f, i+1)
	for j := i + 1; j < len(a); j++ {
		a[i], a[j] = a[j], a[i]
		perm(a, f, i+1)
		a[i], a[j] = a[j], a[i]
	}
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	points := make([]Point, n)
	for i := 0; i < n; i++ {
		points[i] = Point{nextInt(), nextInt()}
	}

	sum := 0.0
	count := 0.0
	perm(points, func(x []Point) {
		for i := 0; i < n-1; i++ {
			sum += dis(x[i], x[i+1])
		}
		count++
	}, 0)

	fmt.Println(sum/count)
}
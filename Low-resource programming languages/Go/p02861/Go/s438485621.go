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
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type point struct {
	x int
	y int
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	points := make([]point, n)
	for i := 0; i < n; i++ {
		points[i].x = nextInt()
		points[i].y = nextInt()
	}

	total := 0.0
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if i != j {
				dx := math.Pow(float64(points[i].x-points[j].x), 2)
				dy := math.Pow(float64(points[i].y-points[j].y), 2)

				total += math.Sqrt(dx + dy)
			}
		}
	}
	fmt.Printf("%.10f", total/float64(n))
}

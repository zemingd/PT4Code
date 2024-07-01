package main

import (
	"fmt"
	"math"
)

type Point struct {
	x int
	y int
}

func getLength(p1 Point, p2 Point) float64 {
	return math.Sqrt(
		math.Pow(
			float64(p1.x - p2.x), 2) +
		math.Pow(
			float64(p1.y - p2.y), 2))
}

func getAllLength(p []Point) float64 {
	var length float64
	for i := 0; i < len(p) - 1; i++ {
		length += getLength(p[i], p[i+1])
	}
	return length
}

func combi(n int, stack []Point, tmp []Point, ret []float64) []float64 {
	for i := 0; i < len(stack); i++ {
		tmp := append(tmp, stack[i])
		if (len(tmp) == n) {
			return append(ret, getAllLength(tmp))
		} else {
			// 抽出は破壊的なのでコピー用に複製する
			childtmp := append([]Point{}, stack...)
			child := append(childtmp[:i], childtmp[i+1:]...)
			ret = combi(n, child, tmp, ret)
		}
	}
	return ret
}

func main() {
	var n int
	fmt.Scanf("%d\n", &n)
	point := make([]Point, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d\n", &point[i].x, &point[i].y)
	}
	stack := make([]Point, n)
	for i := 0; i < n; i++ {
		stack[i] = point[i]
	}
	ways := combi(n, stack, []Point{}, []float64{})
	var total float64
	for _, value:= range ways {
		total += value
	}
	fmt.Println(total/float64(len(ways)))
}
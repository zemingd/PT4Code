package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	xs, ys := []int{}, []int{}

	for i := 0; i < n; i++ {
		var x, y int
		fmt.Scanf("%d %d", &x, &y)
		xs = append(xs, x)
		ys = append(ys, y)
	}

	sum := 0.0
	routes := generateRoutes(n)
	for _, route := range routes {
		sum += distance(route, xs, ys)
	}

	fmt.Printf("%f\n", sum/float64(len(routes)))

}

func distance(route, xs, ys []int) float64 {
	d := 0.0
	for i := 0; i < len(route)-1; i++ {
		from := route[i]
		to := route[i+1]
		xd := float64(xs[to] - xs[from])
		yd := float64(ys[to] - ys[from])
		d += math.Sqrt(xd*xd + yd*yd)
	}
	return d
}

func generateRoutes(n int) [][]int {
	towns := map[int]struct{}{}
	for i := 0; i < n; i++ {
		towns[i] = struct{}{}
	}
	return generatePerm(towns)
}

func generatePerm(unused map[int]struct{}) [][]int {

	if len(unused) <= 1 {
		result := [][]int{}
		for i, _ := range unused {
			result = append(result, []int{i})
		}
		return result
	}

	result := [][]int{}
	for i, _ := range unused {
		recUnused := map[int]struct{}{}
		for j, _ := range unused {
			if j != i {
				recUnused[j] = struct{}{}
			}
		}

		for _, js := range generatePerm(recUnused) {
			result = append(result, append(js, i))
		}
	}

	return result
}

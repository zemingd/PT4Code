package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var N, max int
	fmt.Scan(&N)
	a := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	max = abs(a[0])
	for i := 0; i < N-1; i++ {
		max += abs(a[i+1] - a[i])
	}
	max += abs(a[len(a)-1])
	for i := 0; i < N; i++ {
		x := 0
		if i > 0 {
			x = a[i-1]
		}
		y := a[i]
		z := 0
		if i < N-1 {
			z = a[i+1]
		}
		r := max
		r -= abs(x - y)
		r -= abs(y - z)
		r += abs(x - z)
		fmt.Println(r)
	}
}
func abs(a int) int {
	return int(math.Abs(float64(a)))
}

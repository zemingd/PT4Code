package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var in = bufio.NewScanner(os.Stdin)

func nextSlice(n int) []int {
	var mat []int
	in.Scan()
	temp := strings.Split(in.Text(), " ")
	for i := 0; i < n; i++ {
		li, _ := strconv.Atoi(temp[i])
		mat = append(mat, li)
	}
	return mat
}

func main() {
	var n, t, a int
	var h = make([]int, n)

	fmt.Scan(&n)
	fmt.Scanf("%d %d\n", &t, &a)

	h = nextSlice(n)

	var tempra = make([]float64, n)
	for i := 0; i < len(h); i++ {
		tempra[i] = float64(t) - float64(h[i])*float64(0.006)
	}

	near := 9999999999.909999
	index := 0
	for i := 0; i < len(tempra); i++ {
		deff := math.Abs(float64(a) - tempra[i])
		if deff < near {
			near = deff
			index = i
		}
	}
	fmt.Println(index + 1)
}

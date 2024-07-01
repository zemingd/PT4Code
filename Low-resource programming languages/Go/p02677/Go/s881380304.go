package main

import (
	"bufio"
	"errors"
	"fmt"
	"math"
	"os"
	"strconv"
)

func lib_MinFloat64(values ...float64) (min float64, err error) {
	if len(values) == 0 {
		return 0, errors.New("empty slice is given")
	}
	min = values[0]
	for _, value := range values {
		if min > value {
			min = value
		}
	}
	return
}
func lib_MustMinFloat64(values ...float64) (min float64) {
	min, err := lib_MinFloat64(values...)
	if err != nil {
		panic(err)
	}
	return min
}
func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var A int
	scanner.Scan()
	A, _ = strconv.Atoi(scanner.Text())
	var B int
	scanner.Scan()
	B, _ = strconv.Atoi(scanner.Text())
	var H int
	scanner.Scan()
	H, _ = strconv.Atoi(scanner.Text())
	var M int
	scanner.Scan()
	M, _ = strconv.Atoi(scanner.Text())
	fmt.Println(solve(A, B, H, M))
}
func solve(A int, B int, H int, M int) float64 {
	shortDegree := 360.0/12.0*float64(H) + 30.0/60.0*float64(M)
	longDegree := 360.0 / 60.0 * float64(M)
	diff := lib_MustMinFloat64(math.Abs(shortDegree-longDegree), math.Abs(longDegree-shortDegree))
	if diff > 180 {
		diff -= 180
	}
	ret := math.Pow(float64(A), float64(2)) + math.Pow(float64(B), float64(2)) - 2.0*float64(A)*float64(B)*math.Cos(diff*math.Pi/180)
	return math.Sqrt(ret)
}

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

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		x := nextInt()
		as[i] = x
	}

	for i := 0; i < n; i++ {
		sl := append([]int{0}, as[:i]...)
		sl = append(sl, as[i+1:]...)
		sl = append(sl, 0)
		ds := make([]float64, len(sl))
		for x := 0; x < len(sl)-1; x++ {
			d := math.Abs(float64(sl[x+1] - sl[x]))
			ds[x+1] = d
		}
		sum := float64(0)
		for _, d := range ds {
			sum += d
		}
		fmt.Printf("%d\n", int(sum))
	}
}

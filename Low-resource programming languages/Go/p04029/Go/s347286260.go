package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	ss := strings.Split(sc.Text(), " ")

	nl := []float64{}
	for _, i := range ss {
		m, _ := strconv.ParseFloat(i, 64)
		nl = append(nl, m)
	}

	res := math.MaxFloat64
	for i := -100; i <= 100; i++ {
		r := 0.0
		for _, x := range nl {
			r += math.Pow(x - float64(i), 2)
		}
		if res > r {
			res = r
		}
	}
	fmt.Println(int(res))
}

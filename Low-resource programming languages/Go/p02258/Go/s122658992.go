package main

import (
	"fmt"
	"math"
	"bufio"
	"os"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	var n, r, min int
	max := math.MinInt32
	sc.Scan();
	n, _ = strconv.Atoi(sc.Text())
	sc.Scan();
	min, _ = strconv.Atoi(sc.Text())
	for i := 1; i<n; i++ {
		sc.Scan();
		r, _ = strconv.Atoi(sc.Text())
		a := r-min
		if a > max { max = a }
		if r < min { min = r }
	}
	fmt.Printf("%d\n", max)
}


package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

// utils
func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func max(a, b int) int {
	return int(math.Max(float64(a), float64(b)))
}

func min(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

func abs(a, b int) int {
	return int(math.Abs(float64(a) - float64(b)))
}

//data types

type pair struct {
	first  int
	second int
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	set := make(map[int]struct{})

	for i := 0; i < n; i++ {
		a := nextInt()
		if _, ok := set[a]; ok {
			fmt.Print("NO")
			return
		}
		set[a] = struct{}{}
	}

	fmt.Print("YES")
}

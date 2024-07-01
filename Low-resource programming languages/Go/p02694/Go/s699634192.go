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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	source := 100
	X := nextInt()
	i := 0

	for {
		i++
		source = int(math.Floor(float64(source) * 1.01))
		if source >= X {
			fmt.Print(i)
			break
		}
	}
}

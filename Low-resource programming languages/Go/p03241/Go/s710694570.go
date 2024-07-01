package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func next() int64 {
	s.Scan()
	i, _ := strconv.ParseInt(s.Text(), 10, 64)
	return i
}

func main() {
	s.Split(bufio.ScanWords)
	N := next()
	M := next()

	d := int64(math.Floor(math.Sqrt(float64(M))))

	for ; d >= 1; d-- {
		if M%d != 0 {
			continue
		}

		p := M / d
		if p >= N {
			fmt.Println(d)
			return
		}
	}
}

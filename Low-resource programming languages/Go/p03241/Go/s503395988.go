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

	yaku := []int64{}
	sq := int64(math.Floor(math.Sqrt(float64(M))))
	var i int64
	for i = 1; i < sq; i++ {
		if M%i == 0 {
			yaku = append(yaku, i, M/i)
		}
	}

	for i := len(yaku) - 1; i >= 0; i-- {
		d := yaku[i]
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

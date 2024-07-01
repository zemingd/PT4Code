package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func next() int {
	s.Scan()
	i, _ := strconv.ParseInt(s.Text(), 10, 64)
	return int(i)
}

func main() {
	s.Split(bufio.ScanWords)
	N := next()
	M := next()

	yaku := []int{}
	sq := int(math.Floor(math.Sqrt(float64(M))))
	var i int
	for i = 1; i < sq; i++ {
		if M%i == 0 {
			yaku = append(yaku, i, M/i)
		}
	}

	sort.Ints(yaku)

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

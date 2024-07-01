package main

import (
	"bufio"
	"fmt"
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

	for d := M; d >= 1; d-- {
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

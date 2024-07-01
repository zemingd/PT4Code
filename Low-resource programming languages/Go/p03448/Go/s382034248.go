package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {

	answer(input(), input(), input(), input())

}

func answer(in ...string) {
	A, _ := strconv.ParseInt(in[0], 10, 64)
	B, _ := strconv.ParseInt(in[1], 10, 64)
	C, _ := strconv.ParseInt(in[2], 10, 64)
	X, _ := strconv.ParseInt(in[3], 10, 64)

	cnt := 0

	for a := int64(0); a <= A; a++ {
		for b := int64(0); b <= B; b++ {
			for c := int64(0); c <= C; c++ {
				if ((500 * a) + (100 * b) + (50 * c)) == X {
					cnt++
				}
			}
		}
	}

	fmt.Println(cnt)

}

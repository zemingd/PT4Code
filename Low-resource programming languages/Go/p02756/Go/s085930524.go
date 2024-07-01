package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	s, q := next(), nextInt()

	for i := 0; i < q; i++ {
		qa := nextInt()
		if qa == 1 {
			sl := len(s)
			if sl > 1 {
				rs := []rune(s)
				rs[0], rs[sl-1] = rs[sl-1], rs[0]
				s = string(rs)
			}
		}
		if qa == 2 {
			f, c := nextInt(), next()
			if f == 1 {
				s = c + s
			}
			if f == 2 {
				s = s + c
			}
		}
	}
	fmt.Println(s)
}

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

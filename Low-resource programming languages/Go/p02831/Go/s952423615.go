package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a := scanInt(sc)
	b := scanInt(sc)
	fmt.Println(lcm(a, b))
}

func lcm(a, b int) int {
	if a > b {
		return lcm(b, a)
	}
	for i := 1; i <= b; i++ {
		n := a * i
		if n%b == 0 {
			return n
		}
	}
	panic("unreachable")
}

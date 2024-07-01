package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func check() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a := scanInt(sc)
	b := scanInt(sc)

	var sum int
	for i := 0; i < 2; i++ {
		if a > b {
			sum += a
			a -= 1
		} else {
			sum += b
			b -= 1
		}
	}

	fmt.Printf("%d\n", sum)

}

func main() {
	check()
}

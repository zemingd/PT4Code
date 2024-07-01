package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Println(abc174c(os.Stdin))
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func abc174c(r io.Reader) int {
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords)

	k := nextInt(sc)

	if k%2 == 0 {
		return -1
	}

	mod := 7 % k
	for i := 1; i <= k+1; i++ {
		if mod == 0 {
			return i
		} else {
			mod *= 10
			mod += 7
			mod %= k
		}
	}

	return -1
}

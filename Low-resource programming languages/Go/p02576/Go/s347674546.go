package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t := sc.Text()
	i, err := strconv.Atoi(t)
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	N := nextInt(sc)
	X := nextInt(sc)
	T := nextInt(sc)

	q := N / X
	r := N % X

	if r != 0 {
		fmt.Println((q + 1) * T)
		return
	}
	fmt.Println(q * T)
}

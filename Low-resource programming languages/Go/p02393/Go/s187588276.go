package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func print(a, b, c int) {
	if a > b {
		a, b = b, a
	} // a < b

	if c > b {
		fmt.Println(a, b, c)
	} else if c > a {
		fmt.Println(a, c, b)
	} else {
		fmt.Println(c, a, b)
	}
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(1)
	}
	return num
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	a := nextInt(scanner)
	b := nextInt(scanner)
	c := nextInt(scanner)
	print(a, b, c)
}


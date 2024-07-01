package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func print(a, b, c int) {
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
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


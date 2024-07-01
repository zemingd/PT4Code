package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func convert(a int) {
	hour := a / 3600
	a = a % 3600
	minute := a / 60
	second := a % 60
	fmt.Printf("%d:%d:%d\n", hour, minute, second)
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
	convert(a)
}


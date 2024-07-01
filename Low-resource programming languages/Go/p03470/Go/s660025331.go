package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInput() []int {
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	D := make([]int, N)
	for i := range D {
		sc.Scan()
		d, _ := strconv.Atoi(sc.Text())
		D[i] = d
	}

	return D
}

func main() {

	D := getInput()

	singleD := make([]int, 101)
	for i := range D {
		singleD[D[i]] = 1
	}
	sum := 0
	for sd := range singleD {
		sum += singleD[sd]
	}

	fmt.Println(sum)

}

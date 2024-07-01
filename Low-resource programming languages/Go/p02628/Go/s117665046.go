package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func getErr(e error) {
	panic(e)
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	var N, K int
	var err error
	answer := 0

	scanner.Scan()
	N, err = strconv.Atoi(scanner.Text())
	if err != nil {
		getErr(err)
	}

	scanner.Scan()
	K, err = strconv.Atoi(scanner.Text())
	if err != nil {
		getErr(err)
	}

	p := make([]int, N)

	for i := 0; i < N; i++ {
		scanner.Scan()
		number := 0
		number, err = strconv.Atoi(scanner.Text())
		if err != nil {
			getErr(err)
		}
		p[i] = number

	}

	sort.Ints(p)

	for i := 0; i < K; i++ {
		answer += p[i]
	}

	fmt.Println(answer)
}

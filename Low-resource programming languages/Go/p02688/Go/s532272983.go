package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	sunuke := make([]int, n)
	k := nextInt()

	for i := 0; i < k; i++ {
		d := nextInt()
		for l := 0; l < d; l++ {
			a := nextInt() - 1
			sunuke[a]++
		}
	}

	count := 0
	for i := 0; i < n; i++ {
		if sunuke[i] == 0 {
			count++
		}
	}

	fmt.Println(count)
}

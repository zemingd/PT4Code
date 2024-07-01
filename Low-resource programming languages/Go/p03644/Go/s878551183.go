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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()

	res := make(map[int]int)

	max := 0
	key := 0

	for i := 1; i <= n; i++ {

		nn := i
		for nn%2 == 0 {
			nn = nn / 2
			res[i] = res[i] + 1
		}

		if max < res[i] {
			max = res[i]
			key = i
		}

	}

	fmt.Println(key)
}

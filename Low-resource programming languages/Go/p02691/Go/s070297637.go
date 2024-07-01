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

type Spy struct {
	n int
	a int
}

func isTarget(i, j Spy) bool {
	if j.n-i.n == j.a+i.a {
		return true
	}
	return false
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	party := []Spy{}
	for i := 0; i < n; i++ {
		n := i + 1
		a := nextInt()
		party = append(party, Spy{n, a})
	}

	count := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if isTarget(party[i], party[j]) {
				count++
			}
		}
	}

	fmt.Println(count)
}

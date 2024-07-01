package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	N, S := nextInt(), nextLine()

	fmt.Printf("%d\n", ABC098C(N, S))
}

// ABC098C ...
func ABC098C(N int, S string) int {
	res := N

	for leader := 0; leader < N; leader++ {
		tmp := 0
		for j := 0; j < N; j++ {
			if leader < j && S[j] == 'E' {
				tmp++
			} else if j < leader && S[j] == 'W' {
				tmp++
			}
		}
		if tmp < res {
			res = tmp
		}
	}

	return res
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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

func main() {
	sc.Split(bufio.ScanWords)

	m := map[string]bool{}
	for i := 1; i <= 9; i++ {
		m[strconv.Itoa(i)] = false
	}

	N, K := nextInt(), nextInt()
	for i := 0; i < K; i++ {
		m[strconv.Itoa(nextInt())] = true
	}

	// fmt.Println(m)

	for i := N; i < 10000; i++ {
		s := strings.Split(strconv.Itoa(i), "")
		flag := true
		for _, ss := range s {
			if m[ss] {
				flag = false
				break
			}
		}

		if flag {
			fmt.Println(i)
			return
		}
	}

}

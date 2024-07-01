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

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt() - 1
	}

	i := 0
	answer := 0
	can := false
	for {
		i = slice[i]
		answer++
		if i == 1 {
			can = true
			break
		}

		if answer == n-1 {
			break
		}

	}

	if can {
		fmt.Println(answer)
	} else {
		fmt.Println(-1)
	}

}

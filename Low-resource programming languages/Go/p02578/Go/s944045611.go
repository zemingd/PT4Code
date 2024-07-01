package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		// fmt.Println(err)
	}
	return a
}

func scanInt3() (int, int, int) {
	return scanInt(), scanInt(), scanInt()
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	var ans int

	max := 0

	for i := 0; i < N; i++ {
		tmp := scanInt()

		if max <= tmp {
			ans += 0
			max = tmp
		} else {
			step := max - tmp
			ans += step
			max = step + tmp
		}
	}

	fmt.Println(ans)
}

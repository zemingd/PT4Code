package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 2*10*10*10*10*10 + 10
)

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func ngTLE() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	a := make([]int, n, n)

	for i := 0; i < n; i++ {
		a[i] = scanInt(sc)
	}

	// 各入力に対して約数を1～走査
	divisors := make(map[int]int)
	// 各入力に対して走査
	for i := 0; i < n; i++ {
		// 約数1～走査
		for div := 1; div <= a[i]; div++ {
			if a[i]%div == 0 {
				if _, ok := divisors[div]; !ok {
					divisors[div] = 1
				} else {
					divisors[div]++
				}
			}
		}
	}

	max := 0
	for k, v := range divisors {
		// 1入力書き換えで最大公約数になれないものは除外
		if v < n-1 {
			continue
		}

		if k > max {
			max = k
		}
	}

	fmt.Printf("%d\n", max)
}

func main() {
	ngTLE()
	// check()
}

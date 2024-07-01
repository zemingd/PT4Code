package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := nextInt()

	if m > 100000 {
		result := 1

		for i := 2; i <= 100; i ++ {
			if m%i == 0 {
				result = i
			}
		}

		for ; n <= m/99; n++ {
			if m%n == 0 {
				fmt.Println(m / n)
				return
			}
		}
		fmt.Println(result)
		return
	} else {
		for ; n <= m; n++ {
			if m%n == 0 {
				fmt.Println(m / n)
				return
			}
		}
	}

}

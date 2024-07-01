package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func main() {
	sc.Split(bufio.ScanWords)
	a := nextInt()
	b := nextInt()
	c := nextInt()
	x := nextInt()

	as := makeRange(0, a)
	bs := makeRange(0, b)
	cs := makeRange(0, c)

	count := 0
	for _, a := range as {
		for _, b := range bs {
			for _, c := range cs {
				if a*500+b*100+c*50 == x {
					count++
				}
			}
		}
	}

	fmt.Println(count)
}

func makeRange(min, max int) []int {
	a := make([]int, max-min+1)
	for i := range a {
		a[i] = min + i
	}
	return a
}

func nextInt() int {
	i, err := strconv.Atoi(nextWord())
	pnc(err)
	return i
}

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func pnc(err error) {
	if err != nil {
		panic(err)
	}
}

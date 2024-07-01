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
	A := nextInt()
	B := nextInt()
	C := nextInt()
	X := nextInt()

	cnt := 0
	for a := 0; a < A+1; a++ {
		for b := 0; b < B+1; b++ {
			for c := 0; c < C+1; c++ {
				if a*500+b*100+c*50 == X {
					cnt += 1
				}

			}
		}
	}
	fmt.Println(cnt)

}

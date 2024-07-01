package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

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

	X := nextInt()

	A, B, C, D := X/1000, (X/100)%10, (X/10)%10, X%10

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				s := A
				res := strconv.Itoa(A)
				switch {
				case i % 2 == 0: s += B; res += "+" + strconv.Itoa(B)
				case i % 2 == 1: s -= B; res += "-" + strconv.Itoa(B)
				}
				switch {
				case j % 2 == 0: s += C; res += "+" + strconv.Itoa(C)
				case j % 2 == 1: s -= C; res += "-" + strconv.Itoa(C)
				}
				switch {
				case k % 2 == 0: s += D; res += "+" + strconv.Itoa(D)
				case k % 2 == 1: s -= D; res += "-" + strconv.Itoa(D)
				}

				if s == 7 {
					fmt.Println(res + "=7")
					return
				}
			}
		}
	}
}
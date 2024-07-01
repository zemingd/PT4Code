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
	a := nextInt()
	b := nextInt()
	add := a + b
	sub := a - b
	mul := a * b
	if add > sub {
		if mul > add {
			fmt.Println(mul)
		} else {
			fmt.Println(add)
		}
	} else {
		if mul > sub {
			fmt.Println(mul)
		} else {
			fmt.Println(sub)
		}
	}
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	// "github.com/davecgh/go-spew/spew"
	// "github.com/k0kubun/pp"
)

var sc = bufio.NewScanner(os.Stdin)

func ScanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	A := ScanInt()
	B := ScanInt()
	C := ScanInt()
	D := ScanInt()
	E := ScanInt()
	F := ScanInt()

	wPattern := map[int]int{}
	for a := 0; a <= F; a += 100 * A {
		for b := 0; b <= F; b += 100 * B {
			total := a + b
			if total > F {
				break
			}
			wPattern[total] = 0
		}
	}

	// not exists set
	sPattern := make(map[int]int)
	for c := 0; c <= F; c += C {
		for d := 0; d <= F; d += D {
			total := c + d
			if total > F {
				break
			}
			sPattern[total] = 0
		}
	}

	// 1 2 1 2 1 100 のとき
	// => 100 0 と水が0でなく存在するようにする
	var ansW, ansS int
	ansW = 100 * A
	for w := range wPattern {
		for s := range sPattern {
			if w == 0 || (w+s) > F {
				continue
			}
			if s*100 > E*w {
				continue
			}

			if s*(ansW+ansS) >= ansS*(w+s) {
				ansW, ansS = w, s
			}
		}
	}

	fmt.Println(ansW+ansS, ansS)

	// print to stderr for debug
	/*
			debug := false
			if debug {
				fmt.Fprintf(os.Stderr, "%#v\n", wPattern)
				spew.Fdump(os.Stderr, wPattern)
				pp.Fprintln(os.Stderr, sPattern)
		    }
	*/
}

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
	var ansW, ansS int
	for w := range wPattern {
		for s := range sPattern {
			if s == 0 || w == 0 || (w+s) > F {
				continue
			}

			if s*100 == w*E {
				fmt.Println(w+s, s)
				return
			}

			if s*100 > E*w {
				continue
			}

			// try else if
			if ansW == 0 || ansS == 0 {
				ansW, ansS = w, s
			} else if s*ansW > ansS*w {
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

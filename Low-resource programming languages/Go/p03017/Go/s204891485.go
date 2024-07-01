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

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func step(s string, i int, j int, max int) int {
	if i < max {
		if s[i] == 46 && i+1 != j {
			i++
		}
	}
	if i+1 < max {
		if s[i+1] == 46 && i+2 != j {
			i += 2
		}
	}
	return i
}

func check(index int, goal int) bool {
	return (index == goal)
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := nextInt()
	b := nextInt()
	c := nextInt()
	d := nextInt()
	s := nextString()

	if c < d {
		for {
			if !check(b, d) && !(b >= d) {
				for !(b == step(s, b, a, n)) {
					b = step(s, b, a, n)
				}
			}

			if !check(a, c) && !(a >= c) {
				a = step(s, a, b, n)
			}

			if check(a, c) && check(b, d) {
				fmt.Println("Yes")
				break
			} else if ((a == step(s, a, b, n)) && (b == step(s, b, a, n))) || (check(b, d) && a == step(s, a, b, n)) || (check(a, c) && b == step(s, b, a, n)) {
				fmt.Println("No")
				break
			}
		}
	}

	if c > d {
		for {
			if !check(a, c) && !(a >= c) {
				for !(a == step(s, a, b, n)) {
					a = step(s, a, b, n)
				}
			}

			if !check(b, d) && !(b >= d) {
				b = step(s, b, a, n)
			}

			if check(a, c) && check(b, d) {
				fmt.Println("Yes")
				break
			} else if ((a == step(s, a, b, n)) && (b == step(s, b, a, n))) || (check(b, d) && a == step(s, a, b, n)) || (check(a, c) && b == step(s, b, a, n)) {
				fmt.Println("No")
				break
			}
		}
	}
}

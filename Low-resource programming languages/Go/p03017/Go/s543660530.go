package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10*10*10*10*10*10*10 + 10
	n          = 0
	a          = 0
	b          = 0
	c          = 0
	d          = 0
	s          = ""
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

func check() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n = scanInt(sc)
	a = scanInt(sc) - 1
	b = scanInt(sc) - 1
	c = scanInt(sc) - 1
	d = scanInt(sc) - 1
	s = scanStr(sc)

	if c > d {
		abdc()
		return
	}

	abcd()
}

func abdc() {
	canMove := false
	for i := b; ; {
		if s[i-1] != '#' && s[i] != '#' && s[i+1] != '#' {
			canMove = true
		}

		if i == d {
			break
		}

		if i+1 < len(s) && s[i+1] == '.' {
			i += 1
			continue
		}

		if i+2 < len(s) && s[i+2] == '.' {
			i += 2
			continue
		}

		fmt.Printf("No\n")
		return
	}

	if !canMove {
		fmt.Printf("No\n")
		return
	}

	if !move(a, c) {
		fmt.Printf("No\n")
		return
	}

	fmt.Printf("Yes\n")
}

func abcd() {
	if !move(b, d) {
		fmt.Printf("No\n")
		return
	}

	if !move(a, c) {
		fmt.Printf("No\n")
		return
	}

	fmt.Printf("Yes\n")
}

func move(start int, target int) bool {
	for i := start; ; {
		if i == target {
			break
		}

		if i+2 < len(s) && s[i+2] == '.' {
			i += 2
			continue
		}

		if i+1 < len(s) && s[i+1] == '.' {
			i += 1
			continue
		}

		return false
	}

	return true
}

func main() {
	check()
}

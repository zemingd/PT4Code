package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10*10*10*10*10 + 10
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

	if c > b {
		acbd()
		return
	}

	abcd()

}

func all() {
	lockIndex := make([]int, 0, 0)
	for i := 0; i < n; i++ {
		if s[i] == '#' {
			lockIndex = append(lockIndex, i)
		}
	}

	fmt.Printf("Yes\n")
}

func abdc() {
	canMove := false
	for i := b; ; {
		if i == d || i+1 == d || i+2 == d {
			break
		}

		if s[i+1] == '.' {
			if s[i+1-1] != '#' && s[i+1+1] != '#' {
				canMove = true
			}
			i += 1
			continue
		}

		if s[i+2] == '.' {
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

	for i := d; ; {
		if i == c || i+1 == c || i+2 == c {
			break
		}

		if s[i+2] == '.' {
			i += 2
			continue
		}

		if s[i+1] == '.' {
			i += 1
			continue
		}

		fmt.Printf("No\n")
		return
	}

	fmt.Printf("Yes\n")
}

func acbd() {
	for i := b; ; {
		if i == d || i+1 == d || i+2 == d {
			break
		}

		if s[i+2] == '.' {
			i += 2
			continue
		}

		if s[i+1] == '.' {
			i += 1
			continue
		}

		fmt.Printf("No\n")
		return
	}

	for i := a; ; {
		if i == c || i+1 == c || i+2 == c {
			break
		}

		if s[i+2] == '.' && i+2 != d {
			i += 2
			continue
		}

		if s[i+1] == '.' && i+1 != d {
			i += 1
			continue
		}

		fmt.Printf("No\n")
		return
	}

	fmt.Printf("Yes\n")

}

func abcd() {
	for i := b; ; {
		if i == d || i+1 == d || i+2 == d {
			break
		}

		if s[i+2] == '.' {
			i += 2
			continue
		}

		if s[i+1] == '.' {
			i += 1
			continue
		}

		fmt.Printf("No\n")
		return
	}

	for i := a; ; {
		if i == c || i+1 == c || i+2 == c {
			break
		}

		if s[i+2] == '.' {
			i += 2
			continue
		}

		if s[i+1] == '.' {
			i += 1
			continue
		}

		fmt.Printf("No\n")
		return
	}

	fmt.Printf("Yes\n")

}

func main() {
	check()
}

package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60
const mod int = 1e9 + 7

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func rb() []byte {
	sc.Scan()
	return sc.Bytes()
}

func main() {
	sc.Split(bufio.ScanWords)
	_, a, b, c, d := ri(), ri()-1, ri()-1, ri()-1, ri()-1
	s := rb()

	canReach := func(start, end int) bool {
		for i := start; i+1 <= end; i++ {
			if s[i] == '#' && s[i+1] == '#' {
				return false
			}
		}
		return true
	}

	canOvertake := func(start, end int) bool {
		for i := start; i+2 <= end; i++ {
			if s[i] == '.' && s[i+1] == '.' && s[i+2] == '.' {
				return true
			}
		}
		return false
	}

	var ans bool
	if c < b {
		if canReach(a, c) && canReach(b, d) {
			ans = true
		} else {
			ans = false
		}
	} else if c < d {
		if canReach(b, d) {
			s[b] = '.'
			s[d] = '#'
			if canReach(a, c) {
				ans = true
			} else {
				ans = false
			}
		} else {
			ans = false
		}
	} else {
		if canReach(b, d) {
			if canReach(a, b) && canReach(d, c) {
				if canOvertake(b, d) {
					ans = true
				} else {
					ans = false
				}
			} else {
				ans = false
			}
		} else {
			ans = false
		}
	}

	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func main() {
	sc.Split(bufio.ScanWords)

	S := []byte(getString())
	k := getInt()

	if len(S) == 1 {
		out(k / 2)
		return
	}

	s := make([]byte, len(S))
	copy(s, S)

	cnt := 0
	for i := 1; i < len(s); i++ {
		if s[i] == s[i-1] {
			s[i] = '!' //byte(0)
			cnt++
		}
	}
	// out(string(s))
	if k == 1 {
		out(cnt)
		return
	}

	cnt2 := cnt
	if s[len(s)-1] != 0 && s[0] == s[len(s)-1] {
		copy(s, S)
		s[0] = '!'
		cnt2 = 1
		for i := 1; i < len(s); i++ {
			if s[i] == s[i-1] {
				s[i] = '!' //byte(0)
				cnt2++
			}
		}
		// out(string(s))
	}

	ans := (cnt + cnt2) * (k / 2)
	if k%2 == 1 {
		ans += cnt
	}
	out(ans)
}

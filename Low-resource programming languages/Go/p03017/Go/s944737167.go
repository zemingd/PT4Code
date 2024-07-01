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

func check1(f, t, n int, s string) bool {
	// out(f, t)
	cnt := 0
	m := 0
	for i := f; i <= t; i++ {
		if s[i] == '#' {
			cnt++
		} else {
			m = max(m, cnt)
			cnt = 0
		}
	}
	if cnt >= 2 {
		return false
	}
	return true
}

func check2(b, d int, s string) bool {
	cnt := 0
	m := 0
	for i := b; i <= d; i++ {
		// out(cnt, s, i, s[i])
		if s[i] == '.' {
			cnt++
		} else {
			m = max(m, cnt)
			cnt = 0
		}
	}
	if m >= 3 {
		return true
	}
	return false
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	N, A, B, C, D := getInt(), getInt()-1, getInt()-1,
		getInt()-1, getInt()-1
	s := getString()

	ans := true
	if s[C] == '#' || s[D] == '#' {
		ans = false
	}
	ret := check1(A, C, N, s)
	ans = ans && ret
	// out(ret)
	ret = check1(B, D, N, s)
	ans = ans && ret
	// out(ret)

	if B > A && C > D {
		ret = check2(B, D, s)
		ans = ans && ret
		// out(ret)
		// out(ans)
	}
	if A > B && D > C {
		ret = check2(A, C, s)
		ans = ans && ret
		// out(ret)
		// out(ans)
	}
	if ans {
		out("Yes")
	} else {
		out("No")
	}
}

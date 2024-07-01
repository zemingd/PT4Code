package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var s, t string
	fmt.Fscan(r, &s)
	fmt.Fscan(r, &t)

	// チェックする文字列のパターンを作成（これ簡単につくるにはどうするべきなんだろう）
	tmp := make([]string, len(t))
	tmp[0] = string(t[0])
	for i := 1; i < len(t); i++ {
		tmp[i] = "?"
	}
	matchStr := strings.Join(tmp, "")

	lastIndex := strings.LastIndex(s, matchStr)
	if lastIndex >= 0 {
		ans := strings.Replace(s[0:lastIndex], "?", "a", -1) + strings.Replace(s[lastIndex:], matchStr, t, -1)
		fmt.Println(ans)
	} else {
		fmt.Println("UNRESTORABLE")
	}
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

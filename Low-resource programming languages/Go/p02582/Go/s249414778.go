package main

import (
	"bufio"
	"fmt"
	"os"
)

func max(a , b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	var s string
	fmt.Fscan(r, &s)

	counting := true
	cnt := 0
	ans := 0
	for _, v := range s {
		if counting {
			if v == 'R' {
				cnt += 1
			} else {
				counting = false
				ans = max(ans, cnt)
			}
		} else {
			if v == 'R' {
				cnt = 1
			}
		}
	}
	ans = max(ans, cnt)
	fmt.Fprintln(w, ans)
}

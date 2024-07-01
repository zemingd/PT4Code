package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	mlist := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		mlist[i] = nextInt()
	}

	ans := 0
	for i := 0; i < n; i++ {
		s := nextInt()

		// iから倒せるだけ倒す
		if mlist[i] < s {
			// iを倒しきれる場合
			ans += mlist[i]
			s -= mlist[i]
			mlist[i] = 0
		} else {
			// iのモンスタ数がsより多い
			ans += s
			mlist[i] -= s
			s = 0
		}

		// i+1から倒せるだけ倒す
		if 0 < s {
			if mlist[i+1] < s {
				// i+1さえも倒しきれる場合
				ans += mlist[i+1]
				mlist[i+1] = 0
			} else {
				// さすがに倒し切れない場合
				ans += s
				mlist[i+1] -= s
			}
		}

	}

	fmt.Println(ans)
}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

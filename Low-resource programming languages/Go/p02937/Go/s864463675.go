package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	
	s,t := scanText(),scanText()

	next := make([][]int, len(s)+1)
	for i := 0; i < len(s)+1; i++ {
		next[i] = make([]int, 26)
	}
	
	for i := len(s)-1; i >= 0; i-- {
		for j := 0; j < 26; j++ {
			next[i][j] = next[i+1][j]
		}
		next[i][s[i]-'a'] = i+1
	}

	ans := int64(0)
	for i := 0; i < len(t); i++ {
		x := int64(next[ans%int64(len(s))][t[i]-'a'])
		if x != 0 {
			ans += x - ans%int64(len(s))
		} else {
			x0 := int64(next[0][t[i]-'a'])
			if x0 != 0 {
				ans += x0 + int64(len(s)) - ans%int64(len(s))
			} else {
				fmt.Println(-1)
				return
			}
		}
	}

	fmt.Println(ans)

}

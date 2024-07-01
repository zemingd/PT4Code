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
	ls := len(s)

	next := make([][]int, 2*ls+1)
	for i := 0; i < 2*ls+1; i++ {
		next[i] = make([]int, 26)
	}

	s = s + s
	
	for i := 2*ls-1; i >= 0; i-- {
		for j := 0; j < 26; j++ {
			next[i][j] = next[i+1][j]
		}
		next[i][s[i]-'a'] = i+1
	}

	ans := int64(0)
	n := int64(ls)

	for _, e := range t {
		x := ans%n
		if next[x][e-'a'] == 0 {
			fmt.Println(-1)
			return
		}

		ans+=int64(next[x][e-'a'])-x
		
	}

	fmt.Println(ans)

}

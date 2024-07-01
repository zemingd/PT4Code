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
		for j := 0; j < 26; j++ {
			next[i][j] = -1
		}
	}
	
	for i := len(s)-1; i >= 0; i-- {
		for j := 0; j < 26; j++ {
			next[i][j] = next[i+1][j]
		}
		next[i][s[i]-'a'] = i+1
	}

	rep := int64(0)
	index := 0
	for i := 0; i < len(t); i++ {
		if next[index][t[i]-'a'] != -1 {
			index = next[index][t[i]-'a']
		} else {
			if next[0][t[i]-'a'] != -1 {
				rep++
				index = next[0][t[i]-'a']
			} else {
				fmt.Println(-1)
				return
			}
		}
	}

	fmt.Println(rep*int64(len(s))+int64(index))

}

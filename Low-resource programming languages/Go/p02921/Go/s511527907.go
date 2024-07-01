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
	
	s, t := scanText(), scanText()

	ans := 0 

	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			ans++
		}
	}
	fmt.Println(ans)
}

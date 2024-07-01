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

func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()
	m := scanInt()

	card := make([]bool, n)
	
	for i:=0; i<n; i++ {
		card[i] = true
	}

	for i:=0; i<m; i++ {
		l := scanInt()
		r := scanInt()
		for j:=0; j<l-1; j++ {
			card[j] = false
		}
		for j:=r; j<n; j++ {
			card[j] = false
		}
	}

	ans := 0

	for i:=0; i<n; i++ {
		if card[i] {
			ans++
		}
	}

	fmt.Println(ans)
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()

	n := len(s)
	count := 0
	if string(s[0]) == "A" {
		for i := 2; i < n-1; i++ {
			if string(s[i]) == "C" {
				count++
			}
		}
		if count == 1 {
			for j := 0; j < n; j++ {
				if string(s[j]) == "A" || string(s[j]) == "C" {
					continue
				} else {
					if s[j] <= 97 {
						fmt.Println("WA")
						return
					}
				}
			}
			fmt.Println("AC")
			return
		}
	}
	fmt.Println("WA")
}

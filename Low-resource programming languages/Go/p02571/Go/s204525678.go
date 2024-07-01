package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	s := strings.Split(sc.Text(), "")
	//fmt.Println(s)

	sc.Scan()
	t := strings.Split(sc.Text(), "")
	//fmt.Println(t)

	minDist := 1000
	for i := 0; i < len(s)-len(t); i++ {
		//fmt.Println(i)
		dist := 0
		for j := 0; j < len(t); j++ {
			//fmt.Println(j)
			if s[i+j] != t[j] {
				dist++
			}
		}
		if minDist > dist {
			minDist = dist
		}
	}

	fmt.Println(minDist)
}

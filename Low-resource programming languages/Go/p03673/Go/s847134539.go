package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	ns := sc.Text()
	sc.Scan()
	line := strings.Split(sc.Text(), " ")
	n, _ := strconv.Atoi(ns)
	ad := n % 2
	l, r := make([]string, n / 2), make([]string, (n / 2) + ad)
	for i, v := range line {
		if i % 2 == 0 {
			r[i / 2] = v
		} else {
			l[i / 2] = v
		}
	}
	if n % 2 == 0 {
		for i := len(l) - 1; i >= 0; i-- {
			fmt.Print(l[i])
			if i != 0 {
				fmt.Print(" ")
			}
		}
		for i := 0; i < len(r); i++ {
			fmt.Print(" ")
			fmt.Print(r[i])
		}
	} else {
		for i := len(r) - 1; i >= 0; i-- {
			fmt.Print(r[i])
			if i != 0 {
				fmt.Print(" ")
			}
		}
		for i := 0; i < len(l); i++ {
			fmt.Print(" ")
			fmt.Print(l[i])
		}
	}
	fmt.Println()
}
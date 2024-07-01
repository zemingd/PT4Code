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
	str := make([]string, 0)
	for i, v := range line {
		v := strings.Trim(v, "")
		if i % 2 == 0 {
			str = append(str, v)
		} else {
			str = append([]string{v}, str...)
		}
	}
	if n % 2 == 0 {
		for i, v := range str {
			fmt.Print(v)
			if i == n - 1 {
				fmt.Println()
			} else {
				fmt.Print(" ")
			}
		}
	} else {
		for i := n - 1; i >= 0; i-- {
			fmt.Print(string(str[i]))
			if i == 0 {
				fmt.Println()
			} else {
				fmt.Print(" ")
			}
		}
	}
}
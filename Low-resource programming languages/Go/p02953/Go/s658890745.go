package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	stdin.Scan()
	_, _ = strconv.Atoi(stdin.Text())
	arr := strings.Split(stdin.Text(), " ")
	max := 0
	now := 0
	b := true
	for i, v := range arr {
		now, _ = strconv.Atoi(v)
		switch b == true {
		case i == 0:
			max = now
		default:
			chk := max - 1 - now
			switch {
			case chk == 0:
				b = true
			case chk <= -1:
				b = true
				max = now
			case chk >= 1:
				b = false
			}
		}
	}
	if b == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}


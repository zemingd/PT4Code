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
	old := 0
	now := 0
	var f bool
	for i, v := range arr {
		now, _ = strconv.Atoi(v)
		switch {
		case i == 0:
			old = now
		default:
			chk := old - now
			switch {
			case chk == -1:
				f = true
				now += 1
				old = now
			case chk > 2:
				f = false
			default:
				f = true
				old = now
			}
		}

	}
	if f == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No", f, arr)
	}

}

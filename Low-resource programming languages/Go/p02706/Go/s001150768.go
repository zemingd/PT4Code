package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var nm string
	var a string

	if sc.Scan() {
		nm = sc.Text()
	}

	if sc.Scan() {
		a = sc.Text()
	}

	nmArr := strings.Split(nm, " ")
	intN, _ := strconv.Atoi(nmArr[0])

	for _, v := range strings.Split(a, " ") {
		intV, _ := strconv.Atoi(v)
		intN -= intV
	}

	if intN < 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(intN)
	}
}

package main

import (
	"os"
	"fmt"
	"bufio"
	"strings"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	ab    := strings.Split(sc.Text(), " ")
	a, _  := strconv.Atoi(ab[0])
	b, _  := strconv.Atoi(ab[1])
	
	if a <= b {
		fmt.Println(a)
	} else {
		fmt.Println(a - 1)
	}

}
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
	in := sc.Text()

	vars := strings.Split(in, " ")
	a, _ := strconv.Atoi(vars[0])
	b, _ := strconv.Atoi(vars[1])
	c, _ := strconv.Atoi(vars[2])

	if a < b && b < c {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}

}


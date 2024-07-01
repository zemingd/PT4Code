package main

import (
	"os"
	"fmt"
	"bufio"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	AB := strings.Split(sc.Text(), " ")
	A, _ := strconv.Atoi(AB[0])
	B, _ := strconv.Atoi(AB[1])

	add := A + B
	sub := A - B
	mul := A * B

	if add > sub && add > mul {
		fmt.Println(add)
	} else if sub > add && sub > mul {
		fmt.Println(sub)
	} else if mul > add && mul > sub {
		fmt.Println(mul)
	}
}
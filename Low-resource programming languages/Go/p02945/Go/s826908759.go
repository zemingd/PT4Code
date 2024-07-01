package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	A, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	B, _ := strconv.Atoi(sc.Text())

	plus := A + B
	minus := A - B
	x := A * B
	if plus >= minus && plus >= x {
		fmt.Println(plus)
	} else if minus >= plus && minus >= x {
		fmt.Println(minus)
	} else if x >= plus && x >= minus {
		fmt.Println(x)
	}
}

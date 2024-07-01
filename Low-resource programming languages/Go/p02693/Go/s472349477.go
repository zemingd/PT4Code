package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	return i
}
func main() {
	sc.Split(bufio.ScanWords)
	k := nextInt()
	a := nextInt()
	b := nextInt()

	if k == 1 {
		fmt.Println("Yes")
		return
	}
	if (b-a)/k >= 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

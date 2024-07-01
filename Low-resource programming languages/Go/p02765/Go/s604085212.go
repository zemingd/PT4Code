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
	n := nextInt()
	r := nextInt()

	if n >= 10 {
		fmt.Println(r)
	} else {

		fmt.Println(r - 100*(10-n))
	}

}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	a := scanInt()
	b := scanInt()
	c := scanInt()
	kawaiso := false

	switch true {
	case a == b:
		kawaiso = true
	case b == c:
		kawaiso = true
	case a == c:
		kawaiso = true
	}
	if a == b && b == c {
		kawaiso = false
	}
	if kawaiso {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

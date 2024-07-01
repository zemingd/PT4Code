package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
)

var Err error = errors.New("cannot read from stdin")
var m = map[string]string{
	"A": "T",
	"T": "A",
	"C": "G",
	"G": "C",
}

func main() {
	sc := bufio.NewScanner(os.Stdin)

	if !sc.Scan() {
		panic(Err)
	}
	fmt.Println(m[sc.Text()])
}
package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	table = map[string]string{"A": "C", "C": "A", "T": "G", "G": "T"}
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	if !sc.Scan() {
		panic(nil)
	}

	b := sc.Text()

	fmt.Printf("%s\n", table[b])

}

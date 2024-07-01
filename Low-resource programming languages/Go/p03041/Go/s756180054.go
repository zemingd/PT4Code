package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan := bufio.NewScanner(os.Stdin)
	scan.Split(bufio.ScanWords)
	scan.Scan()
	scan.Scan()
	k, _ := strconv.Atoi(scan.Text())
	scan.Scan()
	s := scan.Text()

	for i, v := range s {
		if i == k-1 {
			fmt.Print(strings.ToLower(string(v)))
		} else {
			fmt.Print(string(v))
		}
	}
}

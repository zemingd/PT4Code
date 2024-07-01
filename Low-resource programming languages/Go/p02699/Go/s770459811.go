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
	s, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	w, _ := strconv.Atoi(sc.Text())
	if s < w {
	fmt.Println("unsafe")
	}
	fmt.Println("safe")
}

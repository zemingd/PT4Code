package main

import(
	"os"
	"bufio"
	"strconv"
	"fmt"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	b, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	c, _ := strconv.Atoi(sc.Text())
	if a < b && a < c && a < c{
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

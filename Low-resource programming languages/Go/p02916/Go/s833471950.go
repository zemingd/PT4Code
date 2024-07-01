package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func readLine() string {
	sc.Scan()
	return sc.Text()

}

func main() {
	n, _ := strconv.Atoi(readLine())
	b := 0

	aStr := strings.Split(readLine(), " ")
	bStr := strings.Split(readLine(), " ")
	cStr := strings.Split(readLine(), " ")

	tmp := -1
	for i := 0; i < n; i++ {
		aNum, _ := strconv.Atoi(aStr[i])
		bNum, _ := strconv.Atoi(bStr[i])
		if aNum-tmp == 1 {
			if tmp > 0 {
				tmp--
			}
			cNum, _ := strconv.Atoi(cStr[tmp])
			b += cNum
		}
		b += bNum
		tmp = aNum
	}

	fmt.Println(b)
}
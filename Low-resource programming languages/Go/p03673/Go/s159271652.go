package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	n   int
	tmp int
)

func main() {
	fmt.Scanln(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a := make([]int, 0, n)

	for sc.Scan() {
		tmp, _ := strconv.Atoi(sc.Text())
		a = append(a, tmp)
	}

	if n == 1 {
		fmt.Println(a[0])
		os.Exit(0)
	} else if n == 2 {
		fmt.Println(a[1], a[0])
		os.Exit(0)
	}

	i := len(a) - 1
	for i >= 0 {
		fmt.Printf("%d ", a[i])
		i -= 2
	}
	if i == -2 {
		i = 1
	} else {
		i = 0
	}
	for i < len(a) {
		if i == len(a)-2 {
			fmt.Println(a[i])
			break
		}
		fmt.Printf("%d ", a[i])
		i += 2
	}

}
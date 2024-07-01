package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func check() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	mod := make([]int, 0, 5)

	var ret int

	for i := 0; i < 5; i++ {
		v := scanInt(sc)
		ret += v / 10
		if tmp := v % 10; tmp != 0 {
			mod = append(mod, tmp)
		}
	}

	var min int
	for i := 0; i < len(mod); i++ {
		if i == 0 {
			min = mod[i]
		}
		if mod[i] < min {
			min = mod[i]
		}
	}
	fmt.Printf("%d\n", ret*10+(len(mod)-1)*10+min)

}

func main() {
	check()
}

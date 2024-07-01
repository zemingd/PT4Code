package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInput() (int, int) {
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	Y, _ := strconv.Atoi(sc.Text())

	return N, Y
}

func main() {

	main2()
	return

	N, Y := getInput()

	for x := 0; x <= N; x++ {
		for y := 0; y <= N-x; y++ {
			if 10000*x+5000*y+1000*(N-x-y) == Y {
				fmt.Printf("%d %d %d\n", x, y, N-x-y)
				return
			}
		}

	}

	fmt.Println("-1 -1 -1")
}

func main2() {
	N, Y := getInput()

	for x := 0; x <= Y/10000; x++ {
		for y := 0; y <= (Y-10000*x)/5000; y++ {
			if 10000*x+5000*y+1000*(N-x-y) == Y {
				fmt.Printf("%d %d %d\n", x, y, N-x-y)
				return
			}
		}
	}
	fmt.Println("-1 -1 -1")
	return
	for x := Y / 10000; 0 <= x; x-- {
		for y := (Y - x*10000) / 5000; 0 <= y; y-- {
			if 10000*x+5000*y+1000*(N-x-y) == Y {
				fmt.Printf("%d %d %d\n", x, y, N-x-y)
				return
			}
		}
	}

	fmt.Println("-1 -1 -1")
}

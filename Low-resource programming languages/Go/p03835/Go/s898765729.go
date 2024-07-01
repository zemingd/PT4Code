package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func main() {

	sc.Split(bufio.ScanWords)
	x := make([]int, 2)
	for i := 0; i < 2; i++ {
		x[i] = nextInt()
	}

	// 0 <= x,y,z <= K
	// x + y + z = S

	// 2 <= K <= 2500
	// 0 <= S <= 3K
	// K, Sは整数`

	//仮に 3 3 とする
	K := x[0]
	S := x[1]
	count := 0
	for x := 0; x <= S; x++ {
		for y := 0; y <= S-x; y++ {
			z := S - x - y
			if 0 <= z && z <= K {
				count++
			}
		}
	}
	fmt.Println(count)
}

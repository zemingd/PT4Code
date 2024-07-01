package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sosuu []int
var findsosuu int

func sosuuMake(a int) {

	sosuu = make([]int, 1)
	sosuu[0] = 2
	flg := false
	for i := 3; i <= int(math.Sqrt(float64(a))); i++ {
		flg = true
		for j := 0; j < len(sosuu); j++ {
			if i%sosuu[j] == 0 {
				flg = false
				break
			}
		}
		if flg {
			sosuu = append(sosuu, i)
		}

	}
}

func sosuuFind(n int) {

	k := n
	sosuuflg := true
	for findsosuu == 1 {
		sosuuflg = true
		for i := 0; i < len(sosuu); i++ {
			if k%sosuu[i] == 0 {
				sosuuflg = false
				break
			}
		}
		if sosuuflg {
			findsosuu = k
		} else {
			k++
		}
	}

}

func main() {

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	x, _ := strconv.Atoi(sc.Text())
	findsosuu = 1
	if x > 2 {
		sosuuMake(x)

		go sosuuFind(x)
		for findsosuu == 1 {

		}

	} else {
		findsosuu = 2
	}
	fmt.Println(findsosuu)
}

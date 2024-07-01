package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"time"
)

var sosuu []int
var findsosuu int

func sosuuMake(a int) {

	sosuu = make([]int, 1)
	sosuu[0] = 2
	flg := false
	for i := 3; i < a/2; i++ {
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
	for findsosuu == 1 {
		go sosuuFind2(k)
		time.Sleep(10 * time.Microsecond)
		k++
	}

}

func sosuuFind2(n int) {
	sosuuflg := true
	for i := 0; i < len(sosuu); i++ {
		if n%sosuu[i] == 0 {
			sosuuflg = false
			break
		}
	}
	if sosuuflg {
		findsosuu = n
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

		sosuuFind(x)
		for findsosuu == 1 {

		}

	} else {
		findsosuu = 2
	}
	fmt.Println(findsosuu)
}

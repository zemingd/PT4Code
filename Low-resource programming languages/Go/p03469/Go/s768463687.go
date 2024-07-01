package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
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

	maiInt := nextInt()
	yenInt := nextInt()

	if yenInt%1000 != 0 {
		fmt.Println("-1 -1 -1")
		return
	}

	yenInt /= 1000

	yen10 := 0
	yen5 := 0
	yen1 := 0

	if yenInt > 10 {
		yen10 = (yenInt - yenInt%10) / 10
		yenInt -= yen10 * 10
	}

	if yenInt > 5 {
		yen5 = (yenInt - yenInt%5) / 5
		yenInt -= yen5 * 5
	}

	if yenInt > 1 {
		yen1 = yenInt
	}

	is10 := false
reCheck:
	if maiInt > yen1+yen5+yen10 {
		if is10 || yen10 == 0 {
			yen5 -= 1
			yen1 += 5
			is10 = false
		} else {
			yen10 -= 1
			yen5 += 2
			is10 = true
		}
		goto reCheck
	}

	fmt.Printf("%d %d %d", yen10, yen5, yen1)
}

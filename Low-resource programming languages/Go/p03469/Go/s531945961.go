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
	yenIntRaw := yenInt

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
	is5 := false
reCheck:
	if maiInt > yen1+yen5+yen10 {
		if is5 {
			if yen1 < 10{
				fmt.Println("-1 -1 -1")
				return
			}else {
				yen1 -= 10
				yen10 += 1
			}
		} else if is10 || yen10 == 0 {
			yen5 -= 1
			yen1 += 5
			is10 = false
			if yen5 == 0 {
				is5 = true
			}
		} else {
			yen10 -= 1
			yen5 += 2
			is10 = true
		}
		goto reCheck
	}

	if yen10*10000+yen5*5000+yen1*1000 != yenIntRaw {
		fmt.Println("-1 -1 -1")
	} else {
		fmt.Printf("%d %d %d", yen10, yen5, yen1)
	}
}

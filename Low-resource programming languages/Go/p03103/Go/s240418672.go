package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	val, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return val
}


// 長い文字列を読み込む時に使う //
var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
    buf := make([]byte, 0, 1000000)
    for {
        l, p, e := rdr.ReadLine()
        if e != nil {
            panic(e)
        }
        buf = append(buf, l...)
        if !p {
            break
        }
    }
    return string(buf)
}
/////////////////////////////


type Shop struct {
	Cost		int
	Num	int
}

type Shops []Shop

func (ss Shops) Len() int {
	return len(ss)
}

func (ss Shops) Swap(i, j int) {
	ss[i], ss[j] = ss[j], ss[i]
}

func (ss Shops) Less(i, j int) bool {
	return ss[i].Cost < ss[j].Cost
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	M := nextInt()

	shops := make(Shops, 0)

	for i := 0; i < N; i++ {
		shops = append(shops, Shop{nextInt(), nextInt()})
	}

	sort.Sort(shops)

	total := 0
	num := 0
	for _, shop := range(shops) {
		if shop.Num <= M - num {
			num += shop.Num
			total += shop.Num * shop.Cost
		} else {
			total += (M - num) * shop.Cost
			num = M
			break
		}
	}
	fmt.Println(total)
}
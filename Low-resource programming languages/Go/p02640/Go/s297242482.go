package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	x := readInt64() // count of animals
	y := readInt64() // count of legs

	turu := int64(2)
	kame := int64(4)
	deltaTuruKame := kame - turu

	allTuruLegs := x * turu
	allKameLegs := x * kame

	delta := y - allTuruLegs

	if delta < 0 {
		fmt.Println("No")
		return
	}

	//奇数
	if y%2 != 0 {
		fmt.Println("No")
		return
	}

	//鶴のみ
	if delta == 0 {
		fmt.Println("Yes")
		return
	}

	//亀のみ
	if y-allKameLegs == 0 {
		fmt.Println("Yes")
		return
	}

	countOfSwap := delta / deltaTuruKame

	if countOfSwap > x {
		fmt.Println("No")
		return
	}

	if kame*countOfSwap+turu*(x-countOfSwap) == y {
		fmt.Println("Yes")
		return
	} else {
		fmt.Println("No")
		return
	}
}

var (
	scanner *bufio.Scanner
)

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

func readInt64() int64 {
	var t string

	if scanner.Scan() {
		t = scanner.Text()
	}

	n, err := strconv.ParseInt(t, 10, 64)
	if err != nil {
		log.Fatal(err)
	}

	return n

}

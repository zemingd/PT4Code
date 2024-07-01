package main

import (
	"fmt"
	"strconv"

	// Reader
	"bufio"
	"os"
	"strings"
)

func main() {
	l := nextLine()

	nc, _ := strconv.Atoi(l[0])
	mc, _ := strconv.Atoi(l[1])
	dx, _ := strconv.Atoi(l[2])
	
	books := make([][]int, nc)
	for n := 0; n < nc; n++ {
		books[n] = make([]int, mc + 1)

		bl := nextLine()
		c, _ := strconv.Atoi(bl[0])
		books[n][0] = c
		for m := 1; m <= mc; m++ {
			x, _ := strconv.Atoi(bl[m])
			books[n][m] = x
		}
	}

	total := checkBooks(books, mc, dx)
	// 全部買ってもダメな時
	if total == -1 {
		fmt.Printf("%d\n", -1)
		os.Exit(0)
	}

	fmt.Printf("%d\n", exec(books, mc, dx, total))
}

func exec(books [][]int, mc int, dx int, maxCost int) int {
	var minCost int = maxCost
	var minBooks [][]int = books
	for n := 0; n < len(books); n++ {
		// 1つ減らす
		tmpBooks := remove(books, n)
		// ダメなら次へ
		total := checkBooks(tmpBooks, mc, dx)
		if total == -1 {
			continue
		}
		if total < minCost {
			minCost = total
			minBooks = tmpBooks
		}
	}
	// これ以上減らせないとき
	if maxCost == minCost {
		return maxCost 
	}
	// さらに減らせるかチェック
	return exec(minBooks, mc, dx, minCost)
}


func checkBooks(books [][]int, mc int, dx int) int {
	totals := make([]int, mc + 1)
	for _, book := range(books) {
		for k, v := range(book) {
			totals[k] += v
		}
	}

	for m := 1; m <= mc; m++ {
		if totals[m] < dx {
			return -1
		}
	}

	return totals[0]
}

func remove(books [][]int, search int) [][]int {
    result := [][]int{}
    for k, v := range books {
        if k != search {
            result = append(result, v)
        }
    }
    return result
}

// Reader
var limit int = 1000
var rdr = bufio.NewReaderSize(os.Stdin, limit)

func nextLine() []string {
	return parseLine(readLine())
}

func readLine() string {
	buf := make([]byte, 0, limit)
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

func parseLine(s string) []string {
	slice := strings.Split(s, " ")
	return slice
}

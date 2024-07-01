package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}
	m, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}
	
	if n == 1 {
		k, err := strconv.Atoi(input())
		if err != nil {
			log.Fatalln(err)
		}
		fmt.Println(k)
		return
	}

	list := make(map[int]int)

	for i := 1; i <= m; i++ {
		list[i] = 0
	}

	for i := 0; i < n; i++ {
		k, err := strconv.Atoi(input())
		if err != nil {
			log.Fatalln(err)
		}
		for j := 0; j < k; j++ {
			a, err := strconv.Atoi(input())
			if err != nil {
				log.Fatalln(err)
			}
			list[a] += 1
		}
	}

	count := 0
	for _, v := range list {
		if v == n {
			count++
		}
	}

	fmt.Println(count)
}

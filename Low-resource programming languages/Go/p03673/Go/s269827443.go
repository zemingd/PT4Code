package main

import (
	"bufio"
	"bytes"
	"container/list"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	n   int
	tmp int
)

func main() {
	fmt.Scanln(&n)

	buf := bytes.NewBufferString("")

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	ls := list.New()

	i := 0
	for sc.Scan() {
		tmp, _ := strconv.Atoi(sc.Text())
		if i%2 == 0 {
			ls.PushFront(tmp)
		} else {
			ls.PushBack(tmp)
		}
		i++
	}

	if n%2 == 0 {
		for e := ls.Back(); e != nil; e = e.Prev() {
			buf.WriteString(
				fmt.Sprintf("%d ", e.Value),
			)
		}
	} else {
		for e := ls.Front(); e != nil; e = e.Next() {
			buf.WriteString(
				fmt.Sprintf("%d ", e.Value),
			)
		}
	}

	fmt.Println(strings.TrimSpace(buf.String()))
}
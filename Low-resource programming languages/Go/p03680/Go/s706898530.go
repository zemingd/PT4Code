package main

import(
	"bufio"
	"strconv"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readBigLine() string {
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

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func gcd(x int, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x % y)
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()

	buttons := make([]int, n)
	for i := 0; i < n; i++ {
		buttons[i] = nextInt()
	}

	currentBtn := buttons[0]
	count := 1
	for currentBtn != 2 {
		nextBtn := buttons[currentBtn-1]
		count++
		if nextBtn == 2 {
			break
		}
		if buttons[nextBtn-1] == currentBtn {
			fmt.Println(-1)
			return
		}
		currentBtn = nextBtn
	}

	fmt.Println(count)
}
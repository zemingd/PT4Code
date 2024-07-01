package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

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


func main() {
		
	divide := []string{"maerd", "remaerd", "esare", "resare"}
	

	var s string
	s = readLine()
	//s = "dreamerer"
	s = reverse(s)
	start := 0
	can := false
	strLen := 0
	for i := 1; i < len(s)+1; i++ {
		st := string([]rune(s)[start:i])
		//fmt.Println(st)
	
		for j := 0; j < len(divide); j++ {
			if st == divide[j] {
				//fmt.Println(reverse(st))
				can = true
				strLen += len(divide[j])
				start = i
				i++
				
				break
			}
		}
		
	}
	
	if can && strLen == len(s) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

	

}

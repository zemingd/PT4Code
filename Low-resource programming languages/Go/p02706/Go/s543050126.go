package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	In := ReadLineInt()
	Days := In[0]

	In = ReadLineInt()
	for _, v := range In {
		Days -= v
	}

	if Days <= -1 {
		fmt.Println(-1)
	} else {
		fmt.Println(Days)
	}
}

/////////////////////////////////////////

var BufReader = bufio.NewReaderSize(os.Stdin, 1e6)

func ReadLine() string {
	a, _, _ := BufReader.ReadLine()
	return string(a)
}

func ReadLineInt() (result []int) {
	in := strings.Split(ReadLine(), " ")
	result = make([]int, 0, 2)
	for _, v := range in {
		t, _ := strconv.Atoi(v)
		result = append(result, t)
	}
	return
}

func ReadBigLine() string {
	result := make([]byte, 0, 1e6)
	for {
		line, remains, e := BufReader.ReadLine()
		if e != nil {
			panic(e)
		}
		result = append(result, line...)
		if !remains {
			break
		}
	}
	return string(result)
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	Input := ReadLine()

	result := 0
	for {
		if len(Input) <= 3 {
			fmt.Println(result)
			return
		}

		for i := 0; i < len(Input)-3; i++ {
			Test := Input[:i+4]
			//fmt.Println("test:", Test)
			Num, _ := strconv.Atoi(Test)
			if Num%2019 == 0 {
				result++
			}
		}

		Input = Input[1:]
	}
}

/////////////////////////////////////////

func fln(format string, elements ...interface{}) {
	fmt.Printf(format+"\n", elements...)
}

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
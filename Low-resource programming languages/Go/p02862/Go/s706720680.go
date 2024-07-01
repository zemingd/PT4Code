package main

import(
	"fmt"
	"bufio"
	"os"
	"strconv"
	"math"
)

func main(){
	stdin.Split(bufio.ScanWords)
	X := getStdin()
	Y := getStdin()

	remainder1 := (2*Y-X)
	remainder2 := (2*X-Y)
	
	if(remainder1%3 ==0 && remainder2%3 == 0){
		goal := factorial((remainder1+remainder2)/3)/(factorial(remainder1/3)*factorial(remainder2/3))
		Goal := goal%(int(math.Pow(10,9))+7)
		fmt.Println(int(Goal))
	}else{
		fmt.Println(0)
	}
}

var stdin = bufio.NewScanner(os.Stdin)

func getStdin() int{
	stdin.Scan()
		if err := stdin.Err(); err != nil{
			fmt.Fprintln(os.Stderr, err)
		}
		line, err := strconv.Atoi(stdin.Text())
		if err != nil{
			panic(err)
		}
	return line
}

func getStd() string{
	stdin.Scan()
		if err := stdin.Err(); err != nil{
			fmt.Fprintln(os.Stderr, err)
		}
		line := stdin.Text()
	return line
}

func factorial(a int) int{
	var sum = 1
	for i:= 0; i<a; i++{
		sum *= (a-i)
	}
	return sum
}


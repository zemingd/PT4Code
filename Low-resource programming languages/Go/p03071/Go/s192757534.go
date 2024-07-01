package main
import (
	"fmt"
	"os"
	"bufio"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func Input_int() int {
	stdin.Scan()
	out,err := strconv.Atoi(stdin.Text())
	if err != nil{
		panic(err)
	}
	return out
}

func main(){
	stdin.Split(bufio.ScanWords)
	A,B := Input_int(),Input_int()
	if A==B || (A+1)==B || A==(B+1){
		fmt.Println(A+B)
	}else if A>B{
		fmt.Println(A*2-1)
	}else{
		fmt.Println(B*2-1)
	}
}
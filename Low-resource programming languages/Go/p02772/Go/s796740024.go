package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

func main(){

	_ = read()
	a := strings.Split(read()," ")
	judg := true

	for _,number := range a{

		i,_ := strconv.Atoi(number)
		if i % 2 == 0 && (i % 3 == 0 || i % 5 ==0){
			continue
		}else if i % 2 != 0{
			continue
		}
		judg = false
		fmt.Println("DENIED")
		break
	}

	if judg == true{
		fmt.Println("APPROVED")
	}

}

func read() string{

	var(
        scan = bufio.NewScanner(os.Stdin)
	    s string
	)

	if scan.Scan(){
		s=scan.Text()
	}

	return s
}
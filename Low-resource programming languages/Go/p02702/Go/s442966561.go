package main

import (
	"fmt"
)

func main() {

	var S string

	fmt.Scan(&S)

	cnt :=0


	for i:=0;i<=len(S);i++{

		for j:=i+1;j<=len(S);j++{

			temp,_ :=strconv.Atoi(S[i:j])

			if temp%2019 ==0{

				cnt++
			}

		}

	}


	fmt.Println(cnt)

}
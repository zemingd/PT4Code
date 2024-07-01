package main

import "fmt"

func main(){
	var s string
	textedit(s)

}

func textedit(s string){
	/*入力を受け取る*/
	fmt.Scan(&s)

	/*入力をstring→文字の配列*/
	sRune := []rune(s)
	size := len(s)

	/*空の文字列*/
	s2 := make([]string, size+1)	
	j := 0;

	for i:=0; i<size; i++{
		switch text := string(sRune[i]); text{
		case "1":
			s2[j]=string(sRune[i])
			j++

		case "0":
			s2[j]=string(sRune[i])
			j++

		case "B":
			if j>0{
				j--
			}

		default:

		}
	}

	for i:= 0; i < j; i++{
		fmt.Printf(s2[i])
	}

	fmt.Printf("\n")

}

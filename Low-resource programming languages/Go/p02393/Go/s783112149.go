package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
	"reflect"
	"sort"
)

func showType(obj interface{}){
	v:=reflect.ValueOf(obj)
	fmt.Println(v.Type())
}

func main(){
	//stdinから読み込み
	sc:=bufio.NewScanner(os.Stdin)
	//1行読み込む(Splitの設定が1行になっているため)
	//scanner.Split(bufio.ScanWords) // 1単語ごと
	//scanner.Split(bufio.ScanLines) // 1行ごと（デフォルト）と変更可能
	sc.Scan()

	//読み込み
	line:=sc.Text()

	//エラー処理
	if err:=sc.Err();err!=nil{
		fmt.Println("fail to read stdio")
	}

	//"1 23 4" -> ["1","23","4"]
	var str_num_slice []string =strings.Split(line," ")

	num_slice:=make([]int,0)

	//rangeで回すと暗黙にintになっている
	for _,s:=range(str_num_slice){
		temp,err:=strconv.Atoi(s)
		if err!=nil{
			fmt.Println("there are not int string.")
			os.Exit(1)
		}
		num_slice=append(num_slice,temp)
	}

	sort.Ints(num_slice)

	for idx,num :=range num_slice{
		fmt.Print(num)
		if idx!=len(num_slice)-1{
			fmt.Print(" ")
		}else{
			fmt.Print("\n")
		}
	}

}

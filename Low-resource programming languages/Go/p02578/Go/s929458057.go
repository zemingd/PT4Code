package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
//	"time"
)
var ( 
	N int
	A []int
)



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

func stringToArr(str string )[]string{
   return strings.Split( str," ")	
}

func atoi(str string)int{
	 ret,_ := strconv.Atoi(str)
	 return ret
}
func atoi2(str []string)[]int{

	ret:= make([]int,len(str))

	for i,v := range(str){
		ret[i] = atoi(v)
	}
	return ret
}


func calc (a []int)int64{
	current:= a[0]
	var cnt int64
	cnt = int64(0)
	for i:=1; i< len(a); i++{
		if current > a[i]{
			cnt= cnt + int64(current - a[i])
		}else{
			current = a[i]
		}
	
	}
	return cnt

}


func main (){
//	start := time.Now()
N= atoi( readLine())
A= atoi2 ( stringToArr(readLine()))

re:= calc(A)



//s:= atoi2 (stringToArr( readLine()))
 
//N:=s[0]
//X:=s[1]
//T:=s[2]
/*
cnt:=0
for i:=0; i< len(N); i++ {
	n :=  N[i] - '0'
	cnt += int( n)
}
r:="No"

if  cnt % 9 == 0{
	r="Yes"
}*/



fmt.Println(re)
    
   //n,_ := strconv.Atoi( readLine());
   //l:= strings.Split( readLine(), " ");

   /*
   for i:=0; i<n ;i++ {

   }
	
   for i:=1; i<n ;i++ {
	 
   }
 
   for i:=0; i<n ;i++ {
fmt.Println ( person[i].childrenNumber)
   }*/

 //  end := time.Now()
 //  fmt.Printf("%fç§’\n", (end.Sub(start)).Seconds())

}
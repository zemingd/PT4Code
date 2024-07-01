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

func nextLine() string {
    sc.Scan()
    return sc.Text()
}


func main(){
	var S string
	result := 0

	S=nextLine()
	n:=nextInt()

	if len(S)>1 && S[0]==S[1]{
		result++
	}

	for j:=1; j<len(S)-2; j+=2{
		if S[j]==S[j-1] || S[j+1]==S[j] {
			result++
		}
	}

	if len(S)>2 && S[len(S)-2]==S[len(S)-1]{
		result++
	}

	result*=n

	if len(S)>2 && S[0]==S[len(S)-1] && len(S)%2==1{
		result+=n/2
	}
	if len(S)==1{
		result=n-1
	}

	fmt.Println(result)

}

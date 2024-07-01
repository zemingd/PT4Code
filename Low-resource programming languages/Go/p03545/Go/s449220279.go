//  ABC079 C - Train Ticket
//  

package main

import (
    "fmt"
    "strings"
    "strconv"
    "os"
)

var Pat [][]string

func factorial(i int) int {

    if i == 0 {
        return 1
    }

    return 2*factorial(i-1)
}


func calfunc(Q []string,pPat []string) {
    var res int = 0
    var tmp int

    res,_ = strconv.Atoi(Q[0])
    for i := 0; i < len(pPat); i++ {
        if pPat[i] == "+" { 
            tmp,_ = strconv.Atoi(Q[i+1])
           res += tmp
           //fmt.Println("n=",n)

        } else if pPat[i] == "-" {   // false 
            tmp,_ = strconv.Atoi(Q[i+1])
           res -= tmp
        }
    }
    
    //fmt.Println("n=",n)
    //fmt.Println("res=",res)
    if res == 7 {
        for i := 0; i < len(pPat); i++ { 
            fmt.Print(Q[i])
            fmt.Print(pPat[i])
        }
        fmt.Print(Q[len(pPat)])
        fmt.Println("=7")
        os.Exit(0)
    }
    return 
}


func main() {
    var In string
    var N []string
//    var Sum int = 0
    var digit int
    var mask uint =1

    fmt.Scan(&In)
    slice := strings.Split(In,"")

    if len(slice) != 4 {
        fmt.Println("usage:ABCD")
        os.Exit(0)
    }


    N = make([]string,4)
    N = slice

    //fmt.Println(N)

    digit = factorial(len(N)-1)
    //fmt.Println("digit=",digit)

    Pat = make([][]string,digit)
    for i :=0; i < digit; i++ {
        Pat[i] = make([]string,len(N)-1)
    }

    
    for i:= 0; i < digit; i++ {
        k := uint(i)
        //fmt.Printf("%b\n",i)
        for j := 0; j < len(N)-1; j++ {
            if k&mask == 1 {
                Pat[i][j] = "+"
            } else {
                Pat[i][j] = "-"
            }
            //fmt.Printf("%8b\n",k&mask)
            k=k>>1
        }
    }

    for i:=0; i < digit;i++ {
        //fmt.Println(Pat[i])
        calfunc(N,Pat[i])
    }

}


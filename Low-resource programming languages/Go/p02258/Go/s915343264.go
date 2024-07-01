package main

import  (
    "fmt"
    "bufio"
    "os"
    "strconv"
)

func getInt() int {

    sc.Split(bufio.ScanWords)
    sc.Scan()
    n = strconv.Atoi(sc.Text())
  
    return n
}

func main(){
    
    sc := bufio.NewScanner(os.Stdin)
    
    var n, v, min, cmax int
    max := -1000000000
    n = getInt()
    min = getInt()

    for i := 1 ; i < n ; i++ {
        v = getInt()
        cmax = v - min
        if max < cmax {
            max = cmax
        }
        if min > v {
            min = v
        }
    }
    fmt.Println(max)
}


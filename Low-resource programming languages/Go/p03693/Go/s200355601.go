package main

import(
    "bufio"
    "fmt"
    "os"
    "strings"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func main(){
    line := nextLine()
    nums := strings.Split(line, " ")
    str_join_num := strings.Join(nums, "")
    num, _ := strconv.Atoi(str_join_num)

    if num % 4 == 0{
        fmt.Println("YES")
    }else{
        fmt.Println("NO")
    }
}

package main

import (
    "fmt"
    "bufio"
    "os"
)
    
func main() {
    old := nextLine()
    new := nextLine()
    //newの最後の文字を取得
    last_new := string(new[len(new)-1])
    if (old + last_new) == new {
        fmt.Printf("Yes\n")
    } else {
        fmt.Printf("No\n")
    }
}

/*----------標準入力用の関数----------*/
var reader = bufio.NewReaderSize(os.Stdin, 1000000)

func nextLine() string {
	buffer := make([]byte, 0)
	for true {
		line, isPrefix, _ := reader.ReadLine()
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}
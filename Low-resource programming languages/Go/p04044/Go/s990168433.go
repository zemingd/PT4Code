package main

import (
	"bufio"
	"fmt"
	"os"

	"github.com/emirpasic/gods/lists/arraylist"
	"github.com/emirpasic/gods/utils"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var n, l int
	fmt.Fscan(r, &n, &l)

	list := arraylist.New()
	var s string
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &s)
		list.Add(s)
	}

	list.Sort(utils.StringComparator)
	for i := 0; i < list.Size(); i++ {
		out, _ := list.Get(i)
		fmt.Fprint(w, out)
	}
	fmt.Fprintf(w, "\n")
}

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	X := scanInt()
	if 30 <= X {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
}
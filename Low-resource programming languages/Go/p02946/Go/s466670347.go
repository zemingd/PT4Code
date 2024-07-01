	var n, k int

	var s []string
	fmt.Fscanf(stdin, "%d%d", &k, &n)
	for i := n - k + 1; i <= n+k-1; i++ {
		s = append(s, string(strconv.Itoa(i)))
	}
	fmt.Fprintln(stdout, strings.Join(s, " "))

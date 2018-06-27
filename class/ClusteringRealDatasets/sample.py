

def main():
    # fname = input("Input file name > ")
    fname = "result3.txt"
    aris = []
    with open(fname, 'r') as f:
        for line in f:
            ari = float(line)
            aris.append(ari)

    print("Mean: {}".format(sum(aris) / len(aris)))

if __name__ == '__main__':
    main()

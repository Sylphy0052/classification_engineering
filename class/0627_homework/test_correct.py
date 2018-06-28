def main():
    fname = "Banknote.correctCrispMembership"
    with open(fname, 'r') as f:
        for line in f:
            print(sum([int(i) for i in line.split(' ')]))

if __name__ == '__main__':
    main()

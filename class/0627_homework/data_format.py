def main():
    fname = "data_banknote_authentication.txt"
    datas = []
    with open(fname, 'r') as f:
        for line in f:
            datas.append([float(i)] for i in line.split(','))
    print(datas)

if __name__ == '__main__':
    main()

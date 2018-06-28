def main():
    fname = "data_banknote_authentication.txt"
    # fname = "transfusion.data"
    datas = []
    with open(fname, 'r') as f:
        for line in f:
            datas.append([float(i) for i in line.split(',')])
            # datas.append([int(i) for i in line.split(',')])


    output_fname = "BanknoteRaw.dat"
    # output_fname = "TransfusionRaw.dat"
    write_string = "{} {}\n".format(len(datas), len(datas[0]) - 1)
    correct_labels = []
    with open(output_fname, 'w') as f:
        f.write(write_string)
        for data in datas:
            # correct_labels.append(int(data[4]))
            # write_string = "{} {} {} {}\n".format(data[0], data[1], data[2], data[3])
            correct_labels.append(int(data[4]))
            write_string = "{} {} {} {}\n".format(data[0], data[1], data[2], data[3])
            f.write(write_string)

    correct_fname = "Banknote.correctCrispMembership"
    # correct_fname = "Transfusion.correctCrispMembership"
    with open(correct_fname, 'w') as f:
        max_i = max(correct_labels)
        for i in range(max_i + 1):
            write_arr = [1 if i == j else 0 for j in correct_labels]
            maped_num = map(str, write_arr)
            write_string = ' '.join(maped_num)
            f.write(write_string + '\n')
    print("Finish format dat file")
if __name__ == '__main__':
    main()

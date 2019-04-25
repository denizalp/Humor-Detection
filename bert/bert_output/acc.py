
if __name__ == "__main__":
    test_results = open("test_results.tsv","r")
    labels = open("../data/testlabels.txt","r")
    
    # read header line
    labels.readline()
    
    total = 12500
    correct = 0

    for i in range(12500):
        results = test_results.readline().split()
        f1 = float(results[0])
        f2 = float(results[1])
        label = int(labels.readline())

        if (label == 0 and f1 >= f2) or (label == 1 and f1 <= f2):
            correct += 1
    
    test_results.close()
    labels.close()

    print(correct/total)

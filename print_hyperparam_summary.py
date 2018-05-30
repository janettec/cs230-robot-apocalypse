with open('fine_tune_sweep.sh') as fp:
    summary = "model name, learning_rate, depth, hidden_units, dropout_rate"
    for line in fp:
        tokens = line.split()
        if len(tokens) > 10:
            modelName = tokens[27]
            learningRate = tokens[11]
            depth = tokens[7]
            hiddenUnits = tokens[9]
            dropoutRate = tokens[13]
            summary += "\n" + modelName + "," + learningRate + "," +  depth +  "," + hiddenUnits +  "," + dropoutRate
    print(summary)


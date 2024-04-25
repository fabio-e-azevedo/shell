coproc LOOP {

    for i in {1..7}; do
        read LINE
        echo "${LINE^^}"
    done

    while read LINE; do
        echo ${LINE}
    done ;
}

OUTPUT=${LOOP[0]}
INPUT=${LOOP[1]}

for i in {1..10}; do
    j="Esta é a linha de número ${i}."
    echo "${j}" >&${INPUT}
    read k <&${OUTPUT} ; echo -e "${j}\t${k}"
done

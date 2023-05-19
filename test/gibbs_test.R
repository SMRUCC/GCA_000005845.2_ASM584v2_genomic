require(GCModeller);

imports ["bioseq.patterns", "bioseq.fasta"] from "seqtoolkit";

let data = read.fasta(`${@dir}/LexA.fasta`);
let motif = as.data.frame(gibbs_scan(data, width = 16));

print(motif);

let align = MSA.of(motif$motif);

bitmap(file = `${@dir}/test_gibbs8.png`) {
    plot(align);
}
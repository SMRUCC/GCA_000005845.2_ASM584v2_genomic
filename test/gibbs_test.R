require(GCModeller);

imports ["bioseq.patterns", "bioseq.fasta"] from "seqtoolkit";

data = read.fasta(`${@dir}/LexA.fasta`);
motif = as.data.frame(gibbs_scan(data));

print(motif);
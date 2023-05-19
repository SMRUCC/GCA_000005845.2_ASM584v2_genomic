require(GCModeller);

imports ["bioseq.patterns", "bioseq.fasta"] from "seqtoolkit";

let data = read.fasta("E:\GCA_000005845.2_ASM584v2_genomic\cellular_graph\tmp\.works\extract_genbank_src\upstream_locis.fasta");
let motif = as.data.frame(gibbs_scan(data, width = 16, maxitr = 30));

print(motif);

# let align = MSA.of(motif$motif);

bitmap(file = `${@dir}/test_gibbs8.png`) {
    plot.seqLogo(motif$motif);
}
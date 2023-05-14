require(GCModeller);

imports "bioseq.fasta" from "seqtoolkit";
imports "bioseq.patterns" from "seqtoolkit";

raw = read.fasta("E:\GCA_000005845.2_ASM584v2_genomic\cellular_graph\tmp\.works\extract_genbank_src\upstream_locis.fasta");
motif = find_motifs(raw, debug = TRUE);


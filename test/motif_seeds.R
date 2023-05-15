require(GCModeller);

imports "bioseq.fasta" from "seqtoolkit";
imports "bioseq.patterns" from "seqtoolkit";

raw = read.fasta("E:\GCA_000005845.2_ASM584v2_genomic\test\LexA.fasta");
pack = open.seedFile("E:\GCA_000005845.2_ASM584v2_genomic\test\LexA.pack");
pack = create.seeds(raw, saveto = pack);

close(pack);